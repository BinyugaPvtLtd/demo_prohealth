import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller.dart';
import 'package:demo_prohealth/presentation/widgets/responsive_screens.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      home: ResponsivePage(
        controller: myController,
      ),
    );
  }
}
