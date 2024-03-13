import 'package:demo_prohealth/presentation/screens/hr_module/add_employee/addemployee_tab_bar_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/education_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/licenses_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/references_child_tabbar.dart';
import 'package:flutter/material.dart';

import '../../../widgets/constant_textfield/const_textfield.dart';

class AddEmployeeHomeScreen extends StatefulWidget {
  @override
  State<AddEmployeeHomeScreen> createState() => _AddEmployeeHomeScreenState();
}

class _AddEmployeeHomeScreenState extends State<AddEmployeeHomeScreen> {
  late AddEmployeeController controller;
  final TextEditingController _yourController = TextEditingController();
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
        Center(
          child: ImpexTextField(
            controller: _yourController,
            obscureText: false,
            keyboardType: TextInputType.text,
            labelText: 'Your Label',
            maxLines: 1,
            textInputAction: TextInputAction.done,
            onSubmitted: (value) {
              print('Submitted: $value');
            },
            autofocus: false,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AddEmployeeTabBar(AddEmployeeController(tabs: [
          Tab(text: 'Education'),
          Tab(text: 'Reference'),
          Tab(text: 'Licenses'),
        ], tabViews: [
          EducationChildTabbar(),
          ReferencesChildTabbar(),
          LicensesChildTabbar(),
        ])),
      ],
    );
  }
}
