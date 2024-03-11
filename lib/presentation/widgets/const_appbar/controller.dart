import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Widget> toptabs;
  final List<Widget> toptabViews;
  final double toptabBarViewHeight;
  final double toptabBarViewWidth;

  AppBarController({
    required this.toptabs,
    required this.toptabViews,
    this.toptabBarViewHeight = 250.0,
    this.toptabBarViewWidth = 600.0,
  });

  @override
  void onInit() {
    tabController = TabController(length: toptabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
//
// class CenteredTabBarChildController extends
// GetxController with GetSingleTickerProviderStateMixin  {
//   late TabController tabController;
//   final List<Widget> tabs;
//   final List<Widget> tabViews;
//   final double tabBarViewHeight;
//   final double tabBarViewWidth;
//
//   CenteredTabBarChildController({
//     required this.tabs,
//     required this.tabViews,
//     this.tabBarViewHeight = 250.0,
//     this.tabBarViewWidth = 600.0,
//   });
//
//   @override
//   void onInit() {
//     tabController = TabController(length: tabs.length, vsync: this);
//     super.onInit();
//   }
//
//   @override
//   void onClose() {
//     tabController.dispose();
//     super.onClose();
//   }
// }
//
