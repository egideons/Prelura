import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/brands_provider.dart';
import 'package:prelura_app/controller/search_history_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/no_product_widget.dart';
import 'package:prelura_app/views/shimmers/grid_view_animation.dart';
import 'package:prelura_app/views/shimmers/users_shimer.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';
import 'package:prelura_app/views/widgets/profile_card.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../../controller/user/user_controller.dart';
import '../../../../res/colors.dart';
import '../../../../res/utils.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/app_checkbox.dart';
import '../../../widgets/card.dart';
import '../../../widgets/empty_screen_placeholder.dart';
import '../../../widgets/error_placeholder.dart';
import '../../../widgets/user_card.dart';
import '../provider/search_provider.dart';

final dialogFilterStateProvider =
    StateProvider<Map<String, List<String>>>((ref) => {});

enum FilterTypes {
  // size('Size'),
  brand('Brand'),
  condition('Condition'),
  gender('Gender'),
  category('Category'),
  style('Style'),
  color('Color'),
  price('Price');

  const FilterTypes(this.simpleName);

  final String simpleName;
}

class LiveSearchPage extends ConsumerStatefulWidget {
  const LiveSearchPage({super.key, this.scrollable = false, e});
  final bool scrollable;

  @override
  ConsumerState<LiveSearchPage> createState() => _InboxScreenState();
}

class _InboxScreenState extends ConsumerState<LiveSearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Add a listener to sync tab changes
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {}); // Trigger UI update for custom tabs
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final searchResults = ref.watch(filteredResultsProvider);
    final filters = ref.watch(searchFilterProvider);
    final state = ref.watch(searchFilterProvider.notifier);
    final query = ref.watch(searchTextController.notifier).state;
    final userAsyncValue = ref.watch(searchProductProvider(query.text));
    final user = ref.watch(userProvider).valueOrNull;

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          16.verticalSpacing,
          // Row(
          //   children: ["Products", "Members"]
          //       .asMap()
          //       .entries
          //       .map(
          //         (entry) => Expanded(
          //           child: GestureDetector(
          //             onTap: () {
          //               _tabController.animateTo(entry.key,
          //                   duration: Duration(milliseconds: 0),
          //                   curve: Curves.linear);
          //             },
          //             child: Container(
          //               padding: const EdgeInsets.only(
          //                 left: 10,
          //                 right: 10,
          //                 top: 12,
          //                 bottom: 18,
          //               ),
          //               decoration: BoxDecoration(
          //                 border: Border(
          //                   bottom: BorderSide(
          //                     color: _tabController.index == entry.key
          //                         ? PreluraColors.activeColor
          //                         : PreluraColors.greyColor.withOpacity(0.5),
          //                     width:
          //                         _tabController.index == entry.key ? 2.0 : 1.0,
          //                   ),
          //                 ),
          //               ),
          //               child: Text(
          //                 entry.value,
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   fontSize: getDefaultSize(),
          //                   color: _tabController.index == entry.key
          //                       ? Theme.of(context).textTheme.bodyMedium?.color
          //                       : PreluraColors.greyLightColor,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       )
          //       .toList(),
          // ),
          10.verticalSpacing,
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 1.58,
            child: TabBarView(controller: _tabController, children: [
              if (query.text.isEmpty)
                ref
                    .watch(
                        userSearchHistoryProvider(Enum$SearchTypeEnum.PRODUCT))
                    .maybeWhen(
                        data: (prediction) {
                          WidgetsFlutterBinding.ensureInitialized()
                              .addPostFrameCallback((_) {
                            ref.read(showSearchProducts.notifier).state = false;
                            setState(() {});
                          });
                          return
                              // (prediction.isEmpty)
                              //   ?
                              SizedBox.shrink()
                              // : Column(
                              //     children: prediction.map((e) {
                              //       return MenuCard(
                              //           title: e.toString(), onTap: () {});
                              //     }).toList(),
                              //   )
                              ;
                        },
                        orElse: () => LoadingWidget())
              else
                // userAsyncValue.when(
                //     skipLoadingOnRefresh: false,
                //     data: (data) => Container(
                //           child: data.isEmpty
                //               ? SizedBox(
                //                   height:
                //                       MediaQuery.of(context).size.height * 0.7,
                //                   child: NoProductWidget(),
                //                 )
                //               : GridView.builder(
                //                   // shrinkWrap: true,
                //                   // physics: scrollable ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
                //                   padding: const EdgeInsets.all(8.0),
                //                   gridDelegate:
                //                       SliverGridDelegateWithFixedCrossAxisCount(
                //                     crossAxisCount: 2,
                //                     crossAxisSpacing: 10,
                //                     mainAxisSpacing: 10,
                //                     childAspectRatio: 0.50,
                //                   ),
                //                   itemCount: data.length,
                //                   itemBuilder: (context, index) {
                //                     return AnimatedGridItem(
                //                       child: ProductCard(
                //                         product: data[index],
                //                       ),
                //                     );
                //                   },
                //                 ),
                //         ),
                //     loading: () => GridShimmer(),
                //     error: (error, stack) {
                //       log(error.toString(), stackTrace: stack);
                //       return Center(
                //         child: ErrorPlaceholder(
                //           error: "Error fetching items",
                //           onTap: () {
                //             ref.invalidate(searchProductProvider(query.text));
                //           },
                //         ),
                //       );
                //     }),

                ///Member search

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ref.watch(searchUserProvider(query.text)).maybeWhen(
                        orElse: () => ListView.separated(
                              itemCount: 20,
                              separatorBuilder: (_, index) => 8.verticalSpacing,
                              itemBuilder: (_, index) => UsersShimmer(),
                            ),
                        data: (users) => users.isEmpty
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                child: const Center(
                                  child: EmptyScreenPlaceholder(
                                      text: "No User found"),
                                ),
                              )
                            : ListView.separated(
                                itemCount: users.length,
                                separatorBuilder: (_, index) =>
                                    8.verticalSpacing,
                                itemBuilder: (_, index) => GestureDetector(
                                  onTap: () {
                                    log("here");
                                    if (user?.username ==
                                        users[index].username) {
                                      final tabRouter =
                                          AutoTabsRouter.of(context);
                                      tabRouter.setActiveIndex(3);
                                      // context.router
                                      //     .push(ProfileNavigationRoute());
                                    } else {
                                      context.router.push(ProfileDetailsRoute(
                                          username: users[index].username));
                                    }
                                  },
                                  child: AnimatedGridItem(
                                    child: UserCard(
                                      user: users[index],
                                    ),
                                  ),
                                ),
                              ),
                        error: (error, stack) {
                          log(error.toString(), stackTrace: stack);
                          return Center(
                            child: ErrorPlaceholder(
                              error: "Error fetching items",
                              onTap: () {
                                ref.invalidate(searchUserProvider(query.text));
                              },
                            ),
                          );
                        }))
            ]),
          )
        ],
      ),
    );
  }
}

void ShowFilterModal(
    BuildContext context, FilterTypes filterType, WidgetRef ref) {
  final filterNotifier = ref.watch(searchFilterProvider.notifier);
  // final List<String> selectedOptions =
  //     ref.watch(searchFilterProvider)[filterType] ?? [];
  // final tempSelections = [...selectedOptions];
  // print(tempSelections);

  final filterOptions = {
    // FilterTypes.size: Enum$SizeEnum.values
    //     .where((e) => e != Enum$SizeEnum.$unknown)
    //     .map((e) => e.name)
    //     .toList(),
    FilterTypes.style: Enum$StyleEnum.values
        .where((e) => e != Enum$StyleEnum.$unknown)
        .map((e) => e.name)
        .toList(),
    FilterTypes.brand:
        ref.watch(brandsProvider).valueOrNull?.map((e) => e.name).toList() ??
            [],
    FilterTypes.category:
        ref.watch(categoryProvider).valueOrNull?.map((e) => e.name).toList() ??
            [],
    FilterTypes.gender: ["Men", "Women"],
    FilterTypes.condition:
        ConditionsEnum.values.map((e) => e.simpleName).toList(),
    // FilterTypes.color: ref.watch(colorsProvider).keys.toList(),
  };
  String? selectedOptions = ref.read(searchFilterProvider)[filterType];

  VBottomSheetComponent.customBottomSheet(
    removeSidePadding: true,
    context: context,
    child: StatefulBuilder(builder: (context, setState) {
      return Consumer(
          builder: (context, ref, _) => Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 500,
                      // minHeight: 250,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: filterOptions[filterType]!
                          .map((e) => PreluraCheckBox(
                              isChecked: selectedOptions == e,
                              onChanged: (value) {
                                if (selectedOptions == e) {
                                  filterNotifier.removeFilter(filterType, e);
                                  setState(() {
                                    selectedOptions = null;
                                  });
                                } else {
                                  filterNotifier.updateFilter(filterType, e);
                                  setState(() {
                                    selectedOptions = e;
                                  });
                                }

                                Navigator.pop(context);
                              },
                              title: e.replaceAll("_", " ")))
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 22, 16, 0),
                    child: AppButton(
                        text: "Clear ${filterType.simpleName}",
                        fontWeight: FontWeight.w600,
                        width: double.infinity,
                        onTap: () {
                          filterNotifier.removeFilter(filterType, "");
                          // Navigator.pop(context);
                          setState(() {
                            selectedOptions = null;
                          });
                        }),
                  )
                ],
              ));
    }),
  );

  // showDialog(
  //     context: context,
  //     builder: (context) {
  //       return Consumer(builder: (context, WidgetRef reff, s) {
  //         var selectedOptions = List<String>.from(reff.watch(searchFilterProvider)[filterType] ?? []);

  //         return AlertDialog(
  //             title: Text('Select $filterType'),
  //             content: SingleChildScrollView(
  //               child: Column(
  //                 children: filterOptions[filterType]!.map((option) {
  //                   return PreluraCheckBox(
  //                     title: option,
  //                     onChanged: (isChecked) {
  //                       if (isChecked) {
  //                         filterNotifier.updateFilter(filterType, option);
  //                       } else {
  //                         filterNotifier.removeFilter(filterType, option);
  //                       }
  //                     },
  //                     isChecked: selectedOptions.contains(option),
  //                   );
  //                 }).toList(),
  //               ),
  //             ));
  //       });
  //     });
}
