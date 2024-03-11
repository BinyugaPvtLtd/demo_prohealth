import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  // Flag to determine if it's a tablet screen
  RxBool isTabletScreen = false.obs;

  // Method to check and set the screen type
  void checkScreenType(double screenWidth) {
    isTabletScreen.value = screenWidth <= 800;
  }
}

class MyAppTabBarController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabBarViewHeight;
  final double tabBarViewWidth;

  MyAppTabBarController({
    required this.tabs,
    required this.tabViews,
    this.tabBarViewHeight = 650.0,
    this.tabBarViewWidth = 650.0});

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

}

class CenteredTabBarController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabBarViewHeight;
  final double tabBarViewWidth;

  CenteredTabBarController({
    required this.tabs,
    required this.tabViews,
    this.tabBarViewHeight = 350.0,
    this.tabBarViewWidth = 600.0,
  });

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

class CenteredTabBarChildController extends GetxController with GetSingleTickerProviderStateMixin  {
  late TabController tabController;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabBarViewHeight;
  final double tabBarViewWidth;

  CenteredTabBarChildController({
    required this.tabs,
    required this.tabViews,
    this.tabBarViewHeight = 250.0,
    this.tabBarViewWidth = 600.0,
  });

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}