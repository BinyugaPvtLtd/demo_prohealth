import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller.dart';
import 'package:flutter/material.dart';
import '../screens/hr_module/manage/manage_screen.dart';
import '../tab_screen/tab_screen.dart';

class ResponsivePage extends StatelessWidget {
  final MyController controller;

  ResponsivePage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          controller.checkScreenType(screenWidth);

          if (controller.isTabletScreen.value) {
            return TabletScreen();
          } else {
            return DesktopWebScreen();
          }
        },
      ),
    );
  }
}
