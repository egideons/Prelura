import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../controller/product/product_provider.dart';
import '../shimmers/grid_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/empty_screen_placeholder.dart';
import '../widgets/gap.dart';

@RoutePage()
class RecentlyViewedProductScreen extends ConsumerStatefulWidget {
  const RecentlyViewedProductScreen(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _RecentlyViewedProductScreenState createState() =>
      _RecentlyViewedProductScreenState();
}

class _RecentlyViewedProductScreenState
    extends ConsumerState<RecentlyViewedProductScreen> {
  final controller = RecentlyViewedProductScreen.scrollController;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      // if (maxScroll - currentScroll <= delta) {
      //   if (ref.read(paginatingHome)) return;
      //   ref.read(recentlyViewedProductsProvider.notifier).fetchMoreProducts();
      // }
    });
  }

  @override
  void dispose() {
    controller.removeListener(() {}); // Ensure listener is removed
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Recently Viewed",
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(recentlyViewedProductsProvider.future);
          if (!mounted) return; // Prevent state updates after unmounting
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              SliverPersistentHeader(
                pinned: true, // Keeps it static
                delegate: StaticSliverDelegate(
                    child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Searchwidget(
                        padding: EdgeInsets.zero,
                        obscureText: false,
                        shouldReadOnly: false,
                        hintText: "Search for items and members",
                        enabled: true,
                        showInputBorder: true,
                        autofocus: false,
                        cancelButton: true,
                        onChanged: (val) {
                          searchQuery = val;
                          setState(() {});
                        },
                      ),
                      addVerticalSpacing(12),
                    ],
                  ),
                )),
              ),
              ref.watch(recentlyViewedProductsProvider).maybeWhen(
                    // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                    data: (products) {
                      final filteredProducts = products
                          .where((product) =>
                              product.name
                                  ?.toLowerCase()
                                  .contains(searchQuery) ??
                              false) // Safely check for "party"
                          .toList();
                      if (filteredProducts.isEmpty) {
                        return SliverFillRemaining(
                          child:
                              EmptyScreenPlaceholder(text: "No products found"),
                        );
                      }
                      return SliverPadding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        sliver: SliverGrid.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.49,
                          ),
                          itemCount: filteredProducts.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                                product: filteredProducts[index]);
                          },
                        ),
                      );
                    },
                    error: (e, _) {
                      return SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("An error occurred"),
                                TextButton.icon(
                                  onPressed: () {
                                    // log(e.toString(), stackTrace: _);
                                    ref.invalidate(filteredProductProvider);
                                  },
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    loading: () => SliverToBoxAdapter(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridShimmer(),
                    )),
                    orElse: () => SliverToBoxAdapter(child: Container()),
                  ),
              // if (ref
              //     .watch(discountedProductsProvider.notifier)
              //     .canLoadMore())
              //   if (!ref.watch(discountedProductsProvider).isLoading)
              //     const SliverToBoxAdapter(
              //       child: PaginationLoadingIndicator(),
              //     )
            ],
          ),
        ),
      ),
    );
  }
}

class StaticSliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StaticSliverDelegate({required this.child});

  @override
  double get minExtent => 75.8;

  @override
  double get maxExtent => 75.8;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
