import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../widgets/app_checkbox.dart';
import '../../../widgets/card.dart';
import '../provider/filter_provider.dart';
import '../provider/search_provider.dart';

final dialogFilterStateProvider =
    StateProvider<Map<String, List<String>>>((ref) => {});

class LiveSearchPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResults = ref.watch(filteredResultsProvider);
    final filters = ref.watch(searchFilterProvider);
    final state = ref.watch(searchFilterProvider.notifier);
    final query = ref.watch(searchQueryProvider).toLowerCase();
    final userAsyncValue = ref.watch(searchProductProvider(query));
    print(query);
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              FilterChip(
                label: Row(
                  children: [
                    Icon(Icons.filter_list),
                    SizedBox(
                      width: 5,
                    ),
                    const Text('Filter'),
                  ],
                ),
                onSelected: (_) => state.clearAllFilters(),
                selected: false,
                checkmarkColor: Theme.of(context).iconTheme.color,
                backgroundColor: Colors.transparent, // Transparent background
                selectedColor:
                    Colors.blue.withOpacity(0.1), // Light blue when selected
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  side: BorderSide(
                    color: Theme.of(context).dividerColor, // Border color
                    width: 1.5, // Border width
                  ),
                ),
              ),
              ...['Size', 'Brand', 'Condition', 'Color'].map((filter) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: FilterChip(
                    checkmarkColor: filters.containsKey(filter)
                        ? PreluraColors.activeColor
                        : Theme.of(context).iconTheme.color,
                    backgroundColor:
                        Colors.transparent, // Transparent background
                    selectedColor: Colors.blue
                        .withOpacity(0.1), // Light blue when selected
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      side: BorderSide(
                        color: filters.containsKey(filter)
                            ? PreluraColors.activeColor
                            : Theme.of(context).dividerColor, // Border color
                        width: 1.5, // Border width
                      ),
                    ),
                    label: Text(filter),
                    onSelected: (isSelected) {
                      // Show filter dialog to select values
                      _showFilterDialog(context, filter, ref);
                    },
                    selected: filters.containsKey(filter),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
        userAsyncValue.when(
            data: (data) => Container(
                  child: data.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: Center(child: Text('No results found')))
                      : LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                          // Dynamically adjust grid column count or aspect ratio based on constraints
                          final crossAxisCount =
                              constraints.maxWidth > 600 ? 3 : 2;
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(8.0),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.58,
                            ),
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              final item = data[index];
                              return ProductCard(
                                product: data[index],
                              );
                            },
                          );
                        }),
                ),
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error'))),
      ],
    );
  }

  void _showFilterDialog(
      BuildContext context, String filterType, WidgetRef ref) {
    final filterNotifier = ref.watch(searchFilterProvider.notifier);
    // final List<String> selectedOptions =
    //     ref.watch(searchFilterProvider)[filterType] ?? [];
    // final tempSelections = [...selectedOptions];
    // print(tempSelections);

    final filterOptions = {
      'Size': ['S', 'M', 'L', 'XL'],
      'Brand': ['Nike', 'Adidas', 'Puma'],
      'Condition': ['New', 'Used - Like New', 'Used - Good'],
      'Color': ['Black', 'White', 'Blue', 'Gray'],
    };
    final selectedOptions =
        List<String>.from(ref.watch(searchFilterProvider)[filterType] ?? []);

    showDialog(
        context: context,
        builder: (context) {
          return Consumer(builder: (context, WidgetRef reff, s) {
            var selectedOptions = List<String>.from(
                reff.watch(searchFilterProvider)[filterType] ?? []);

            return AlertDialog(
                title: Text('Select $filterType'),
                content: SingleChildScrollView(
                  child: Column(
                    children: filterOptions[filterType]!.map((option) {
                      return PreluraCheckBox(
                        title: option,
                        onChanged: (isChecked) {
                          if (isChecked) {
                            filterNotifier.updateFilter(filterType, option);
                          } else {
                            filterNotifier.removeFilter(filterType, option);
                          }
                        },
                        isChecked: selectedOptions.contains(option),
                      );
                    }).toList(),
                  ),
                ));
          });
        });
  }
}
