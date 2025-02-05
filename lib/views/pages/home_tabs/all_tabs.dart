import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/pages/home_tabs/shop_bargains_widget.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../controller/product/product_provider.dart';
import '../../../controller/refresh_provider.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../../shared/mock_data.dart';
import '../../shimmers/custom_shimmer.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/card.dart';
import '../../widgets/error_placeholder.dart';
import '../../widgets/popular_brands.dart';
import 'recently_viewed_products_home.dart';
import 'top_shop_widget.dart';

class HomeAllTab extends ConsumerWidget {
  const HomeAllTab(
      {super.key, required this.searchQuery, required this.controller});
  final String searchQuery;
  final ScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      // physics: AlwaysScrollableScrollPhysics(),
      // controller: controller,
      child: Column(children: [
        if (searchQuery.isNotEmpty) ...[
          ref.watch(allProductProvider(searchQuery)).when(
              data: (products) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.50,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    },
                  ),
                );
              },
              error: (e, _) {
                print(e);
                log("$_");
                return ErrorPlaceholder(
                  error: "An error occured",
                  onTap: () {
                    ref.invalidate(allProductProvider(searchQuery));
                  },
                );
              },
              loading: () => GridShimmer()),
        ] else ...[
          _buildBrandsYouLove(context, ref),
          TopShop(context, ref),
          RecentlyViewedProductsHome(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                "Home Feed",
                textAlign: TextAlign.left,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ref.watch(allProductProvider(null)).maybeWhen(
                // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                error: (e, _) {
                  print(e);
                  log("$_");
                  return ErrorPlaceholder(
                    error: "An error occured",
                    onTap: () {
                      ref.refresh(allProductProvider(searchQuery));
                    },
                  );
                },
                data: (products) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
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
                            product: products.take(6).toList()[index]);
                      },
                    );
                  }),
                ),
                orElse: () => Container(),
              ),
          ShopBargains(context, ref),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: ref.watch(allProductProvider(null)).when(
                  skipLoadingOnRefresh: !ref.watch(homeRefreshProvider),
                  data: (products) {
                    if (products.length < 16) return Container();

                    final clippedProducts = products.sublist(16);
                    final chunkedProducts = List.generate(
                      (clippedProducts.length / 10).ceil(),
                      (i) => clippedProducts.skip(i * 10).take(10).toList(),
                    );

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chunkedProducts.length,
                      itemBuilder: (context, chunkIndex) {
                        return Column(
                          children: [
                            // GridView for the current chunk of 10 products
                            GridView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(left: 16),
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20,
                                childAspectRatio: 0.50,
                              ),
                              itemCount: chunkedProducts[chunkIndex].length,
                              itemBuilder: (context, productIndex) {
                                return ProductCard(
                                    product: chunkedProducts[chunkIndex]
                                        [productIndex]);
                              },
                            ),
                            // Popular Brands widget after every 10 products
                            if (chunkIndex < chunkedProducts.length - 1)
                              PopularBrands(
                                startIndex: chunkIndex, // Dynamic start index
                                limit: 5,
                              ),
                          ],
                        );
                      },
                    );
                  },
                  error: (e, _) {
                    return ErrorPlaceholder(
                      error: "An error occurred",
                      onTap: () {
                        ref.invalidate(allProductProvider(null));
                      },
                    );
                  },
                  loading: () => GridShimmer(),
                ),
          )
        ],
      ]),
    );
  }
}

Widget buildSectionTitle(
    String MainTitle, String subtitle, BuildContext context,
    {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: PreluraColors.greyColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text("See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: PreluraColors.primaryColor)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget _buildBrandsYouLove(BuildContext context, WidgetRef ref) {
  return ref.watch(favoriteBrandProductsProvider).maybeWhen(
      data: (products) {
        log(products.length.toString());
        return products.isEmpty
            ? SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brands You Love",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: getDefaultSize(size: 16),
                            ),
                          ),
                          6.verticalSpacing,
                          Text(
                            "Recommended from your favorite brands",
                            textAlign: TextAlign.left,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: PreluraColors.grey,
                              fontSize: getDefaultSize(),
                            ),
                          ),
                          8.verticalSpacing,
                        ]),
                  ),
                  AspectRatio(
                    aspectRatio: 1.1,
                    // height: 320,
                    // width: MediaQuery.sizeOf(context).width,
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          10.horizontalSpacing,
                      itemBuilder: (context, index) => SizedBox(
                        width: 180,
                        child: ProductCard(product: products[index]),
                      ),
                      itemCount: products.length,
                    ),
                  ),
                  16.verticalSpacing,
                ],
              );
      },
      loading: () => Column(
            children: [
              16.verticalSpacing,
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: CustomShimmer(
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            16.horizontalSpacing,
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ))),
              ),
              16.verticalSpacing,
              AspectRatio(
                aspectRatio: 1.1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    mockData.length,
                    (_) => Container(
                      // height: 220,
                      width: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child:
                          const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                    ),
                  ),
                ),
              ),
            ],
          ),
      orElse: () => Column(
            children: [
              16.verticalSpacing,
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: CustomShimmer(
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            16.horizontalSpacing,
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ))),
              ),
              16.verticalSpacing,
              AspectRatio(
                aspectRatio: 1.1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    mockData.length,
                    (_) => Container(
                      // height: 220,
                      width: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child:
                          const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                    ),
                  ),
                ),
              ),
            ],
          ));
}

Widget sectionTitle(String MainTitle, String subtitle, BuildContext context,
    {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text("See All",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: PreluraColors.primaryColor)),
        )
      ],
    ),
  );
}
