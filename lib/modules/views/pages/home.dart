import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/filter_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';
import 'package:prelura_app/modules/views/widgets/display_live_card.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';

import '../widgets/SearchWidget.dart';
import '../widgets/display_section.dart';

final selectedTabProvider = StateProvider<int>((ref) => 0);

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  static final ScrollController homeScrollController = ScrollController();

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool searching = false;

  @override
  Widget build(BuildContext context) {
    final selectedTab = ref.watch(selectedTabProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RefreshIndicator(
            onRefresh: () => ref.refresh(allProductProvider.future),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(top: 50),
                  sliver: SliverToBoxAdapter(
                    child: Searchwidget(
                      obscureText: false,
                      shouldReadOnly: false,
                      hintText: "Search for items and members",
                      enabled: true,
                      showInputBorder: true,
                      autofocus: false,
                      cancelButton: true,
                      onChanged: (value) {
                        if (value.isEmpty) return;
                        ref.read(searchQueryProvider.notifier).state = value;
                      },
                      onCancel: () {
                        ref.read(searchQueryProvider.notifier).state = '';
                      },
                      onFocused: (focused) {
                        setState(() => searching = focused);
                      },
                    ),
                  ),
                ),
                if (searching) ...[
                  const SliverToBoxAdapter(
                    child: LiveSearchPage(
                      scrollable: true,
                    ),
                  )
                ] else ...[
                  SliverToBoxAdapter(
                    child: _buildTabs(ref, selectedTab, context),
                  ),
                  SliverToBoxAdapter(
                    child: _buildSectionTitle('Collection from Seller', "Items selected by amyleeliu", context),
                  ),
                  SliverFillRemaining(
                    child: ref.watch(allProductProvider).when(
                          data: (products) => DisplaySection(
                            products: products,
                          ),
                          error: (e, _) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(e.toString()),
                                TextButton.icon(
                                  onPressed: () {
                                    // log(e.toString(), stackTrace: _);
                                    ref.invalidate(allProductProvider);
                                  },
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                          loading: () => const Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                            ),
                          ),
                        ),
                  ),
                ]

                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: const Column(
                //     children: [
                //       // _buildSectionTitle('Collection from Seller', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Antropologies', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // const SizedBox(
                //       //   height: 12,
                //       // ),
                //       // const DisplayLiveCard(),
                //       // const SizedBox(
                //       //   height: 12,
                //       // ),
                //       // _buildSectionTitle('Antropologies', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // const SizedBox(
                //       //   height: 30,
                //       // )
                //     ],
                //   ),
                // )
              ],
            ),
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
  double get minExtent => 110.8;

  @override
  double get maxExtent => 122.8;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Widget _buildTabs(WidgetRef ref, int selectedTab, context) {
  final tabs = ["All", "Premium Brands", "Electronics", "Books"];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(tabs.length, (index) {
        return GestureDetector(
          onTap: () {
            ref.read(selectedTabProvider.notifier).state = index;
          },
          child: Container(
            padding: const EdgeInsets.only(right: 10.0, left: 10, bottom: 8),
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: selectedTab == index ? PreluraColors.activeColor : Colors.transparent))),
            child: Center(
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: selectedTab == index ? Theme.of(context).textTheme.bodyMedium?.color : PreluraColors.greyColor,
                  fontWeight: selectedTab == index ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }),
    ),
  );
}

Widget _buildSectionTitle(String MainTitle, String subtitle, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MainTitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        TextButton(onPressed: () {}, child: Text("See All", style: Theme.of(context).textTheme.bodySmall))
      ],
    ),
  );
}
