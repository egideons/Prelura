import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../controller/user/user_controller.dart';
import '../widget/follower_tile.dart';

@RoutePage()
class FollowersScreen extends ConsumerStatefulWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends ConsumerState<FollowersScreen> {
  final TextEditingController _searchController = TextEditingController();
  final RefreshController _refreshController = RefreshController();

  final _queryProvider = StateProvider<FollowerQuery>((ref) => FollowerQuery(
        query: "",
        latestFirst: false,
      ));
  Timer? _debounce;

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // Update the query parameters in the StateProvider
      ref.read(_queryProvider.notifier).state =
          FollowerQuery(query: _searchController.text, latestFirst: false);
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    try {
      await ref.refresh(followingProvider(
          ref.read(_queryProvider))); // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      await ref.refresh(followingProvider(
          ref.read(_queryProvider))); // Re-trigger the provider

      // await ref.read(productRepo).fetchMoreFavouriteProducts();
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final queryParams = ref.watch(_queryProvider);

    // Watch the followersProvider with current query parameters
    final followers = ref.watch(followersProvider(queryParams));

    return SmartRefresher(
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: Scaffold(
        appBar: PreluraAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appbarTitle: "Followers",
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => AutoRouter.of(context).popForced(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              // Search Input
              Searchwidget(
                controller: _searchController,
                obscureText: false,
                shouldReadOnly: false,
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true,
                hintText: "Enter a name or keyword",
              ),
              const SizedBox(height: 16),
              // Result Section
              Expanded(
                child: followers.when(
                  data: (followersList) {
                    if (followersList.isEmpty) {
                      return const Center(child: Text("No followers found."));
                    }
                    return ListView.builder(
                      itemCount: followersList.length,
                      itemBuilder: (context, index) {
                        final user = followersList[index];
                        return FollowerTile(
                          follower: user,
                        );
                      },
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stackTrace) {
                    return Center(child: Text("Error: ${error.toString()}"));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
