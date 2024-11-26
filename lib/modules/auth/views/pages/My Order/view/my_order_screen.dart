import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../../../../../../res/colors.dart';
import '../widget/order_sub_tab.dart';

@RoutePage()
class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          appbarTitle: "My orders",
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              indicatorColor: PreluraColors.activeColor,
              unselectedLabelColor:
                  PreluraColors.greyLightColor, // Text color for inactive tabs
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16, // Font size for the active tab
              ),
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Theme.of(context).textTheme.bodyMedium?.color),
              tabs: const [
                Tab(
                  text: "Sold",
                ),
                Tab(
                  text: "Bought",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  OrderSubTabs(type: 'Sold'), // Sold tab with subtabs
                  OrderSubTabs(type: 'Bought'), // Bought tab with subtabs
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
