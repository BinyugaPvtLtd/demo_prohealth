import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';
///getx
class CenteredTabBar extends GetView<CenteredTabBarController> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: controller.tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TabBar(
            controller: controller.tabController,
            tabs: controller.tabs,
            indicatorWeight: 6,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF50B5E5),
            labelColor: Color(0xFF50B5E5),
            unselectedLabelColor: Colors.black,
            dividerColor: Colors.transparent,
          ),
          SizedBox(height: 20),
          Container(
            height: controller.tabBarViewHeight,
            child: TabBarView(
              controller: controller.tabController,
              children: controller.tabViews,
            ),
          ),
        ],
      ),
    );
  }
}