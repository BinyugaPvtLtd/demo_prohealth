import 'package:demo_prohealth/controller.dart';
import 'package:demo_prohealth/web_screen/screens/web_screen.dart';
import 'package:flutter/material.dart';

import '../../tab_screen/tab_screen.dart';

class MyHomePage extends StatelessWidget {
  final MyController controller;

  MyHomePage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          // Update the screen type in the controller
          controller.checkScreenType(screenWidth);

          // Use the isTabletScreen flag to determine the screen type
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
