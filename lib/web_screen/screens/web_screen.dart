import 'package:demo_prohealth/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class DesktopWebScreen extends StatefulWidget {
  @override
  State<DesktopWebScreen> createState() => _DesktopWebScreenState();
}

class _DesktopWebScreenState extends State<DesktopWebScreen> {
  final MyController myController = Get.find();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset('images/logo.png',height: 64,width: 226,),
      // ),
        body: Column(children: [
      Container(
        height: 100,
        color: Colors.purpleAccent,
      ),
      Container(
        height: 100,
        color: Colors.pinkAccent,
      ),
      // Container(
      //   height: 40,
      //   width: 700,
      //   padding: EdgeInsets.all(5),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(30),
      //       color: Color(0xff50B5E5)),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text('Employment'),
      //       Text('Education'),
      //       Text('Referance'),
      //       Text('Licenses'),
      //     ],
      //   ),
      // )
      // Container(
      //   color: Color(0xff50B5E5),
      //   child: _buildBottomBar(),
      // )
    ]));
  }

  // Widget _buildBottomBar() {
  //   return CustomAnimatedBottomBar();
  // }
}
