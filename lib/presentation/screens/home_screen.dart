import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MyController myController = Get.find();

  @override
  Widget build(BuildContext context) {
    return MyAppBar();
  }
}
