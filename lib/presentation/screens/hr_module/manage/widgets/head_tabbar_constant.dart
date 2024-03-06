import 'package:flutter/material.dart';

class CenteredTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabBarViewHeight;

  CenteredTabBar({
    required this.tabs,
    required this.tabViews,
    this.tabBarViewHeight = 350.0,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TabBar(
            tabs: tabs,
            indicatorWeight: 6,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: Color(0xFF50B5E5),
            labelColor: Color(0xFF50B5E5),
            unselectedLabelColor: Colors.black,
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
