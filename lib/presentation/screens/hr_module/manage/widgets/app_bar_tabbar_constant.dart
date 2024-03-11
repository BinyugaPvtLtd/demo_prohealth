import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:flutter/material.dart';
///getx
class AppBarTabBarConstant extends StatelessWidget {
  final MyAppTabBarController controller;

  AppBarTabBarConstant(this.controller);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.transparent,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(24),
            //   color: Colors.transparent,
            //   boxShadow: [
            //     BoxShadow(
            //       // color: Colors.black.withOpacity(0.2),
            //       color: Colors.black.withOpacity(0.25),
            //       spreadRadius: 1,
            //       blurRadius: 4,
            //       offset: Offset(0, 3),
            //     ),
            //   ],
            // ),
            height: 33,
            width: controller.tabBarViewWidth,
            child: TabBar(
              tabs: controller.tabs,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  boxShadow: [
                      BoxShadow(
                        // color: Colors.black.withOpacity(0.2),
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  borderRadius: BorderRadius.circular(12), // Creates border
                  color: Color(0xFF50B5E5)),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Color(0xFF686464),
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontFamily: 'FiraSans',
                fontSize: 12,
                color: Color(0xFF686464),
                fontWeight: FontWeight.w600,
              ),
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
