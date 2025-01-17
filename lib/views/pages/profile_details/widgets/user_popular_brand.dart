import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../res/colors.dart';
import 'package:prelura_app/res/utils.dart';
import '../../../../controller/product/brands_provider.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../search_result/provider/search_provider.dart';
import '../../search_result/view/search_result.dart';

class UserPopularBrand extends ConsumerStatefulWidget {
  const UserPopularBrand({
    super.key,
    required this.userId,
    required this.username,
    required this.onTap,
    required this.onCancel,
    required this.isSelected,
  });

  final int? userId;
  final String? username;
  final bool isSelected;
  final Function() onTap;
  final Function() onCancel;

  @override
  _UserPopularBrandState createState() => _UserPopularBrandState();
}

class _UserPopularBrandState extends ConsumerState<UserPopularBrand> {
  late bool showSorted;

  @override
  void initState() {
    super.initState();
    showSorted = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    final sortedBrands = ref.watch(userBrandProvider(widget.username ?? " "));

    log(widget.isSelected.toString(), name: "sorted Brands");
    if (widget.isSelected) {
      return sortedBrands.maybeWhen(
        orElse: () {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                (_) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: ShimmerBox(
                    height: 28,
                    width: 100,
                    radius: 5,
                  ),
                ),
              ),
            ),
          );
        },
        data: (data) => data.isNotEmpty
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...data
                              .take(6)
                              .map(
                                (brand) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (data.length > 1) {
                                        ref
                                            .read(userIdProvider.notifier)
                                            .state = widget.userId;
                                        ref
                                            .read(filterUserProductProvider
                                                .notifier)
                                            .updateFilter(
                                              FilterTypes.brand,
                                              brand?.name ?? "",
                                              widget.username,
                                            );
                                        Future.delayed(
                                            const Duration(seconds: 1), () {
                                          widget.onTap();
                                        });
                                      }
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        color: context.isDarkMode
                                            ? PreluraColors.activeColor
                                                .withOpacity(0.3)
                                            : PreluraColors.activeColor
                                                .withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: PreluraColors.activeColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.check,
                                            size: 18,
                                            color: PreluraColors.white,
                                          ),
                                          6.horizontalSpacing,
                                          Text(
                                            brand?.name ?? "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: getDefaultSize(),
                                                  color: PreluraColors.white,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      widget.onCancel();
                      ref.invalidate(filterUserProductProvider);
                      ref.invalidate(userSubCategoryProvider);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child:
                          Icon(Icons.cancel_rounded, color: PreluraColors.grey),
                    ),
                  ),
                ],
              )
            : const SizedBox(
                height: 60,
              ),
      );
    }
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...ref
              .watch(userProductGroupingByBrandProvider(
                  (widget.userId ?? 0, null)))
              .maybeWhen(
                orElse: () {
                  return List.generate(
                    10,
                    (_) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      child: ShimmerBox(
                        height: 28,
                        width: 100,
                        radius: 5,
                      ),
                    ),
                  );
                },
                data: (data) => data.take(6).map(
                      (brand) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            widget.onTap();
                            ref
                                .read(filterUserProductProvider.notifier)
                                .updateFilter(
                                  FilterTypes.brand,
                                  brand.name,
                                  widget.username,
                                );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              color: context.isDarkMode
                                  ? PreluraColors.activeColor.withOpacity(0.3)
                                  : PreluraColors.activeColor.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: PreluraColors.activeColor,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              brand.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: getDefaultSize(),
                                    color: PreluraColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
              ),
        ],
      ),
    );
  }
}
