import 'package:flutter/material.dart';

class CenteredTabBarChild extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabBarViewHeight;
  final double tabBarViewWidth;

  CenteredTabBarChild({
    required this.tabs,
    required this.tabViews,
    this.tabBarViewHeight = 250.0,
    this.tabBarViewWidth = 600.0,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
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
            width: tabBarViewWidth,
            child: TabBar(
              tabs: tabs,
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
            height: tabBarViewHeight,
            child: TabBarView(
              children: tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
