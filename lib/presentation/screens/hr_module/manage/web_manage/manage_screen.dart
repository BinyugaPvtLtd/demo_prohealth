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
import 'package:demo_prohealth/presentation/widgets/app_bar.dart';
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
                      text: 'Add',
                      icon: Icons.add,
                      onPressed: (){}),
                ),
              ],
            ),
            SizedBox(height: 10,),
            EmploymentContainerConstant(),
          ],
        ),
        EducationChildTabbar(),
        ReferencesChildTabbar(),
        LicensesChildTabbar(),
      ],
    );
    childControlleOne = CenteredTabBarChildController(
         tabs: [
           Tab(text: 'Acknowledgements'),
         Tab(text: 'Compensation'),
         Tab(text: 'Additional Vaccinations'),
         Tab(text: 'Others'),] ,
         tabViews: [
           AcknowledgementsChildBar(),
           CompensationChildTabbar(),
           AdditionalVaccinationsChildBar(),
           OtherChildTabbar(),
         ]);
    centeredTabBarController = Get.put(CenteredTabBarController(
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
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        ///appbar
        MyAppBar(),
        SizedBox(height: 4,),
        Container(height: 50,),

        /// green blue container
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  // flex: 1,
                  child: Container(
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.black.withOpacity(0.2),
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Color(0xFF52A889),
                  // color: Color(0xFF52A889),
                ),
              )),
              Expanded(
                flex: 12,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        // color: Colors.black.withOpacity(0.2),
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xffB1D6F4),

                    // color: Color(0xFF52A889),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 25,),

        ///bottomppbar 1,2
      CenteredTabBar(),

        /// bottom row
        SizedBox(height: 100,),
        BottomBarRow(),
      ]),
    );
  }
}