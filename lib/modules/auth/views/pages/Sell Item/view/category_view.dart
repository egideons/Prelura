import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/provider/sub_category_provider.dart';

import '../../../../../../res/colors.dart';
import '../../../widgets/menu_card.dart';

@RoutePage()
class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Category",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            MenuCard(
                title: "Women",
                icon: Icon(
                  Icons.settings,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Women');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "Men",
                icon: Icon(
                  Icons.lock,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Men');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "kids",
                icon: Icon(
                  Icons.info_outlined,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Kids');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "Home",
                icon: Icon(
                  Icons.info_outlined,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Home');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "Electronics",
                icon: Icon(
                  Icons.power_input,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Electronics');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "Entertainment",
                icon: const Icon(
                  Icons.face,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Entertainment');
                  context.router.push(SubCategoryRoute());
                }),
            MenuCard(
                title: "Pet care",
                icon: const Icon(
                  CupertinoIcons.paw,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  ref
                      .read(selectedCategoryNotifierProvider.notifier)
                      .updateData('Pet Care');
                  context.router.push(SubCategoryRoute());
                }),
          ],
        ),
      ),
    );
  }
}
