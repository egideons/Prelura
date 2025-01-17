import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/no_product_widget.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../controller/product/product_provider.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/SearchWidget.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/filters_options.dart';
import '../search_result/view/search_result.dart';
import 'product_by_sales/product_by_christmas.dart';

@RoutePage()
class ProductsByBrandPage extends ConsumerStatefulWidget {
  const ProductsByBrandPage(
      {super.key, required this.title, required this.id, this.customBrand});
  final String? title;
  final int? id;
  final String? customBrand;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductsByBrandPageState createState() => _ProductsByBrandPageState();
}

class _ProductsByBrandPageState extends ConsumerState<ProductsByBrandPage> {
  final controller = ProductsByBrandPage.scrollController;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      if (!mounted) return;
      ref.read(selectedFilteredProductProvider.notifier).state =
          Input$ProductFiltersInput(
              brand: (widget.id)?.toInt(), customBrand: widget.customBrand);
      ref.invalidate(filteredProductProvider(searchQuery));
    });
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref.read(filteredProductProvider(searchQuery).notifier).fetchMoreData();
      }
    });
  }

  @override
  void dispose() {
    log(":::: I ran  from here");
    HelperFunction.genRef!.refresh(selectedFilteredProductProvider);
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
        appbarTitle: widget.title ?? widget.customBrand,
      ),
      body: Builder(builder: (context) {
        return RefreshIndicator(
          onRefresh: () async {
            await ref.refresh(filteredProductProvider(searchQuery).future);
            if (!mounted) return; // Prevent state updates after unmounting
            setState(() {});
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: CustomScrollView(
                controller: controller,
                slivers: [
                  SliverPersistentHeader(
                    pinned: true, // Keeps it static
                    delegate: BrandedProductStaticSliverDelegate(
                        child: Container(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FiltersOptions(
                            excludedFilterTypes: [FilterTypes.brand],
                          ),
                        ],
                      ),
                    )),
                  ),
                  ref.watch(filteredProductProvider(searchQuery)).maybeWhen(
                        // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                        data: (products) {
                          return products.isEmpty
                              ? SliverPadding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  sliver: SliverToBoxAdapter(
                                    child: NoProductWidget(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                    ),

                                    // Container(
                                    //   height:
                                    //       MediaQuery.of(context).size.height *
                                    //           0.7,
                                    //   child: Center(
                                    //     child: Text(
                                    //       "No products found",
                                    //       style: Theme.of(context)
                                    //           .textTheme
                                    //           .bodyLarge,
                                    //     ),
                                    //   ),
                                    // ),
                                  ))
                              : SliverPadding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  sliver: SliverGrid.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 0.50,
                                    ),
                                    itemCount: products.take(6).length,
                                    itemBuilder: (context, index) {
                                      return ProductCard(
                                          product:
                                              products.take(6).toList()[index]);
                                    },
                                  ),
                                );
                        },
                        error: (e, _) {
                          return SliverToBoxAdapter(
                              child: ErrorPlaceholder(
                            error: "An error occurred",
                            onTap: () {
                              // log(e.toString(), stackTrace: _);
                              ref.invalidate(filteredProductProvider);
                            },
                          ));
                        },
                        loading: () => SliverToBoxAdapter(child: GridShimmer()),
                        orElse: () => SliverToBoxAdapter(child: Container()),
                      ),
                  if (ref
                          .watch(filteredProductProvider(searchQuery))
                          .valueOrNull
                          ?.isNotEmpty ==
                      true)
                    if (ref
                        .watch(filteredProductProvider(searchQuery).notifier)
                        .canLoadMore())
                      if (!ref
                          .watch(filteredProductProvider(searchQuery))
                          .isLoading)
                        const SliverToBoxAdapter(
                          child: PaginationLoadingIndicator(),
                        )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class BrandedProductStaticSliverDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;

  BrandedProductStaticSliverDelegate({required this.child});

  @override
  double get minExtent => 68.8;

  @override
  double get maxExtent => 68.8;

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
