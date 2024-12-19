import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/main.dart';
import 'package:prelura_app/modules/model/product/material/material_model.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/app_checkbox.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../../controller/product/materials_provider.dart';
import '../../../shimmers/grid_menu_card_shimmer.dart';
import '../../../widgets/gesture_navigator.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerStatefulWidget {
  const MaterialSelectionScreen({super.key});

  @override
  ConsumerState<MaterialSelectionScreen> createState() =>
      _MaterialSelectionScreenState();
}

class _MaterialSelectionScreenState
    extends ConsumerState<MaterialSelectionScreen> {
  final controller = ScrollController();

  List<MaterialModel> selectedMaterials = [];

  @override
  void initState() {
    final initialSelections = ref.read(sellItemProvider).selectedMaterials;
    selectedMaterials = [...initialSelections];

    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(materialsProvider).isLoading) return;
        if (searchQuery.isNotEmpty) return;
        ref.read(materialsProvider.notifier).fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String searchQuery = '';
  @override
  Widget build(BuildContext context) {
    final materialState = ref.watch(sellItemProvider).selectedMaterials;
    final notifier = ref.read(sellItemProvider.notifier);

    double getBottomInsets() {
      if (MediaQuery.of(context).viewInsets.bottom >
          MediaQuery.of(context).viewPadding.bottom) {
        return MediaQuery.of(context).viewInsets.bottom -
            MediaQuery.of(context).viewPadding.bottom;
      }
      return 0;
    }

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Material (recommended)",
      ),
      body: ref.watch(materialsProvider).when(
            data: (materials) => Stack(
              children: [
                CustomScrollView(
                  controller: controller,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Searchwidget(
                          hintText: "Find a brand",
                          obscureText: false,
                          shouldReadOnly: false,
                          enabled: true,
                          showInputBorder: true,
                          autofocus: false,
                          cancelButton: true,
                          onChanged: (val) {
                            searchQuery = val;
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    if (searchQuery.isNotEmpty) ...[
                      ref.watch(searchMaterial(searchQuery)).when(
                            data: (searchMaterials) => SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  final isSelected = selectedMaterials
                                      .contains(searchMaterials[index]);
                                  return PreluraCheckBox(
                                    isChecked: isSelected,
                                    onChanged: (isChecked) {
                                      setState(() {
                                        if (selectedMaterials.length < 3) {
                                          if (isChecked == true) {
                                            selectedMaterials
                                                .add(searchMaterials[index]);
                                          } else {
                                            selectedMaterials
                                                .remove(searchMaterials[index]);
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                "You can only select up to 2 colours.",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      });
                                    },
                                    title: searchMaterials[index].name,
                                  );
                                },
                                childCount: searchMaterials.length,
                              ),
                            ),
                            error: (e, _) => SliverToBoxAdapter(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(e.toString()),
                                    TextButton.icon(
                                      onPressed: () {},
                                      label: const Text('Retry'),
                                      icon: const Icon(Icons.refresh_rounded),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            loading: () => const SliverToBoxAdapter(
                              child: LoadingWidget(),
                            ),
                          ),
                    ] else
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            final isSelected =
                                selectedMaterials.contains(materials[index]);
                            return PreluraCheckBox(
                              isChecked: isSelected,
                              onChanged: (isChecked) {
                                setState(() {
                                  if (selectedMaterials.length >= 3 &&
                                      isChecked) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          "You can only select up to 2 colours.",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                  if (isChecked == true &&
                                      selectedMaterials.length < 3) {
                                    selectedMaterials.add(materials[index]);
                                  }
                                  if (!isChecked) {
                                    selectedMaterials.remove(materials[index]);
                                  }
                                });
                              },
                              title: materials[index].name,
                            );
                          },
                          childCount: materials.length,
                        ),
                      ),
                    if (ref.watch(materialsProvider.notifier).canLoadMore())
                      if (searchQuery.isEmpty)
                        const SliverToBoxAdapter(
                          child: PaginationLoadingIndicator(),
                        ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 100.w,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 32.0),
                    child: AppButton(
                      onTap: () {
                        notifier.updateSelectedMaterials(selectedMaterials);
                        context.router.popForced();
                      },
                      text: "Done",
                    ),
                  ),
                )
              ],
            ),
            error: (e, _) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.toString()),
                  TextButton.icon(
                    onPressed: () => ref.invalidate(materialsProvider),
                    label: const Text('Retry'),
                    icon: const Icon(Icons.refresh_rounded),
                  ),
                ],
              ),
            ),
            loading: () => GridMenuCardShimmer(),
          ),
    );
  }
}
