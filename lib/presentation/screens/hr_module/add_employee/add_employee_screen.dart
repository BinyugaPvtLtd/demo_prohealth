import 'package:demo_prohealth/presentation/screens/hr_module/add_employee/addemployee_tab_bar_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/add_employee/widget/administration.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/add_employee/widget/clinical.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/add_employee/widget/sales.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:flutter/material.dart';

class AddEmployeeHomeScreen extends StatefulWidget {
  @override
  State<AddEmployeeHomeScreen> createState() => _AddEmployeeHomeScreenState();
}

class _AddEmployeeHomeScreenState extends State<AddEmployeeHomeScreen> {
  late AddEmployeeController controller;

  //
  // @override
  // void initState() {
  //   AddEmployeeController(tabs: [
  //     Tab(text: 'Employment'),
  //     Tab(text: 'Education'),
  //     Tab(text: 'Reference'),
  //     Tab(text: 'Licenses'),
  //   ], tabViews: [
  //     EmploymentContainerConstant(),
  //     EducationChildTabbar(),
  //     ReferencesChildTabbar(),
  //     LicensesChildTabbar(),
  //   ]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddEmployeeTabBar(AddEmployeeController(tabs: [
          Tab(text: 'Clinical'),
          Tab(text: 'Sales'),
          Tab(text: 'Administration'),
        ], tabViews: [
          ClinicalTab(),
          SalesTab(),
          AdministartionTab(),
        ])),
      ],
    );
  }
}
