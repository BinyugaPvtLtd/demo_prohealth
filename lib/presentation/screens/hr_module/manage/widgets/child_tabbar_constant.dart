import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:flutter/material.dart';
///getx
class CenteredTabBarChild extends StatelessWidget {
 final CenteredTabBarChildController controller;

 CenteredTabBarChild(this.controller);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xFF50B5E5),
              boxShadow: [
                BoxShadow(
                  // color: Colors.black.withOpacity(0.2),
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: 30,
            width: controller.tabBarViewWidth,
            child: TabBar(
              tabs: controller.tabs,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.white),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Color(0xFF50B5E5),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: controller.tabBarViewHeight,
            child: TabBarView(
              children: controller.tabViews,
            ),
          ),
        ],
      ),
    );
  }
}