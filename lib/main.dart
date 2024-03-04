import 'package:demo_prohealth/controller.dart';
import 'package:demo_prohealth/tab_screen/tab_screen.dart';
import 'package:demo_prohealth/web_screen/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        controller: myController,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final MyController controller;

  MyHomePage({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App'),
      ),
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
