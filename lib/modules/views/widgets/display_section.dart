import 'package:flutter/material.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/shared/mock_data.dart';

typedef RefreshCallback = Future<void> Function();

class DisplaySection extends StatelessWidget {
  const DisplaySection({super.key, this.products, this.onRefresh, this.isScrollable = false});
  final List<Product>? products;
  final RefreshCallback? onRefresh;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    print("product is ${products!.length}");
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Dynamically adjust grid column count or aspect ratio based on constraints
        final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
        if (products == null) {
          return GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 0.54),
              itemCount: mockData.length,
              itemBuilder: (context, index) {
                return DisplayCard(itemData: mockData[index]);
              });
        }
        return RefreshIndicator(
          onRefresh: onRefresh ?? () async {},
          child: GridView.builder(
            shrinkWrap: true,
            physics: isScrollable ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.572,
            ),
            itemCount: products!.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products![index]);
            },
          ),
        );
      },
    );
  }
}
