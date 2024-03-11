import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/bottom_row.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/acknowledgements_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/add_vaccination_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/compensation_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/other_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/banking_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/health_records_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/inventory_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/pay_rates_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/termination_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/time_off_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/profile_bar/profile_bar.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/add_employee_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/app_bar.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/controller.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/dashboard_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/onboarding_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/register_screen.dart';
import 'package:demo_prohealth/presentation/widgets/custom_icon_button_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../widgets/child_tabbar_screen/qualifications_child/education_child_tabbar.dart';
import '../widgets/child_tabbar_screen/qualifications_child/employment_child_tabbar.dart';
import '../widgets/child_tabbar_screen/qualifications_child/licenses_child_tabbar.dart';
import '../widgets/child_tabbar_screen/qualifications_child/references_child_tabbar.dart';

class DesktopWebScreen extends StatefulWidget {
  @override
  State<DesktopWebScreen> createState() => _DesktopWebScreenState();
}

class _DesktopWebScreenState extends State<DesktopWebScreen> {
  late CenteredTabBarChildController childController;
  late CenteredTabBarChildController childControlleOne;
  late CenteredTabBarController centeredTabBarController;
  late AppBarController appBarController;
  late AppBarController appBarControllerOne;
  @override
  void initState() {
    childController = CenteredTabBarChildController(
      tabs: [
        Tab(text: 'Employment'),
        Tab(text: 'Education'),
        Tab(text: 'Reference'),
        Tab(text: 'Licenses'),
      ],
      tabViews: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 50),
                  child: CustomIconButton(
                      text: 'Add', icon: Icons.add, onPressed: () {}),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            EmploymentContainerConstant(),
          ],
        ),
        EducationChildTabbar(),
        ReferencesChildTabbar(),
        LicensesChildTabbar(),
      ],
    );
    childControlleOne = CenteredTabBarChildController(tabs: [
      Tab(text: 'Acknowledgements'),
      Tab(text: 'Compensation'),
      Tab(text: 'Additional Vaccinations'),
      Tab(text: 'Others'),
    ], tabViews: [
      AcknowledgementsChildBar(),
      CompensationChildTabbar(),
      AdditionalVaccinationsChildBar(),
      OtherChildTabbar(),
    ]);
    centeredTabBarController = Get.put(
      CenteredTabBarController(
        tabs: [
          Tab(text: 'Qualifications'),
          Tab(text: 'Documents'),
          Tab(text: 'Banking'),
          Tab(text: 'Health Records'),
          Tab(text: 'Inventory'),
          Tab(text: 'Pay Rates'),
          Tab(text: 'Termination'),
          Tab(text: 'Time Off'),
        ],
        tabViews: [
          CenteredTabBarChild(childController),
          CenteredTabBarChild(childControlleOne),
          BankingHeadTabbar(),
          HealthRecordsHeadTabbar(),
          InventoryHeadTabbar(),
          PayRatesHeadTabbar(),
          TerminationHeadTabbar(),
          TimeOffHeadTabbar(),
        ],
      ),
    );
    appBarController = Get.put(AppBarController(toptabs: [
      Tab(text: 'Dashboard'),
      Tab(text: 'Manage'),
      Tab(text: 'addEmployee'),
      Tab(text: 'Register'),
      Tab(text: 'Onboarding'),
    ], toptabViews: [
      DashboardScreen(),
      DesktopWebScreen(),
      AddEmplyeeScreen(),
      RegisterScreen(),
      OnBoardingScreen(),
    ]));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ///appbar
        MyAppBar(),
        SizedBox(
          height: 4,
        ),

        /// green blue container
        ProfileBar(),
        SizedBox(
          height: 25,
        ),

        ///bottomppbar 1,2
        CenteredTabBar(),

        /// bottom row
        SizedBox(
          height: 6,
        ),
        BottomBarRow(),
      ]),
    );
  }
}
