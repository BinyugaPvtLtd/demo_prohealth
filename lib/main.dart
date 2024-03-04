import 'package:demo_prohealth/controller.dart';
import 'package:demo_prohealth/web_screen/home_page.dart';
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
      initialRoute: "/",
      home: MyHomePage(
        controller: myController,
      ),
    );
  }
}
