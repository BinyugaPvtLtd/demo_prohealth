import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller/controller.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/acknowledgements_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/add_vaccination_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/compensation_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/documents_child/other_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/education_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/employment_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/licenses_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/child_tabbar_screen/qualifications_child/references_child_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/banking_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/health_records_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/inventory_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/pay_rates_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/termination_head_tabbar.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/head_tabbar_screen/time_off_head_tabbar.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/add_employee_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/controller.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/dashboard_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/onboarding_screen.dart';
import 'package:demo_prohealth/presentation/widgets/const_appbar/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class DumyView extends StatefulWidget {
  const DumyView({Key? key}) : super(key: key);

  @override
  State<DumyView> createState() => _DumyViewState();
}

class _DumyViewState extends State<DumyView> {
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
      DumyView(),
      DashboardScreen(),
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
        DumBar(),
        // appBarController: appBarController,

        SizedBox(
          height: 4,
        )
      ]),
    );
  }
}

class DumBar extends GetView<AppBarController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  // width: 80,
                  // color: Colors.tealAccent,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff008abd).withOpacity(0.9),
                          Color(0xff008abd).withOpacity(0.8)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.4, 0.7],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Container(
                          // padding: EdgeInsets.all(2),
                          height: 33,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/mike.png"),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Column(
                                  children: [
                                    Text("Ask",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 9)),
                                    Text("KLIP",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                      Container(
                        height: 33,
                        width: MediaQuery.of(context).size.width / 5.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Human Resource Manager",
                              style: TextStyle(
                                  color: Color(0xff2B647F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white, // Button color
                            child: InkWell(
                              splashColor: Colors.white, // Splash color
                              onTap: () {},
                              child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 37,
                                  height: 33,
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xff2B647F),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Container(
                          height: 33,
                          width: MediaQuery.of(context).size.width / 8.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Color(0xff2B647F),
                                  size: 20,
                                ),
                                Icon(
                                  Icons.comment,
                                  color: Color(0xff2B647F),
                                  size: 20,
                                ),
                                Icon(
                                  Icons.mail,
                                  color: Color(0xff2B647F),
                                  size: 20,
                                )
                              ])),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 60,
                      ),
                      Container(
                        height: 33,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Material(
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: InkWell(
                            customBorder: CircleBorder(),
                            onTap: () {},
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Admin",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.white, // Set icon color
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 60,
                      ),
                      InkWell(
                        splashColor: Colors.white, // Splash color
                        onTap: () {},
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 37,
                            height: 33,
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            )),
                      ),
                      InkWell(
                        splashColor: Colors.white, // Splash color
                        onTap: () {},
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 37,
                            height: 33,
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            )),
                      ),
                    ])),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: TabBar(
                    controller: controller.tabController,
                    tabs: controller.toptabs,
                    indicatorWeight: 6,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Color(0xFF50B5E5),
                    labelColor: Color(0xFF50B5E5),
                    labelStyle: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelColor: Colors.black,
                    dividerColor: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: controller.toptabBarViewHeight,
            child: TabBarView(
              controller: controller.tabController,
              children: controller.toptabViews,
            ),
          ),
        ],
      ),
    );
  }
}
// class Bar extends StatelessWidget {
//   final AppBarController appBarController;
//
//   const Bar(this.appBarController);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         /// first row logo
//         Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 40,
//                 // width: 80,
//                 // color: Colors.tealAccent,
//                 child: Image.asset('images/logo.png'),
//               ),
//             ),
//             Expanded(
//               flex: 4,
//               child: Container(
//                   height: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15),
//                         topLeft: Radius.circular(15)),
//                     gradient: LinearGradient(
//                       colors: [
//                         Color(0xff008abd).withOpacity(0.9),
//                         Color(0xff008abd).withOpacity(0.8)
//                       ],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       stops: [0.4, 0.7],
//                       tileMode: TileMode.repeated,
//                     ),
//                   ),
//                   child: Row(children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 15,
//                       ),
//                       child: Container(
//                         // padding: EdgeInsets.all(2),
//                         height: 33,
//                         width: 80,
//                         decoration: BoxDecoration(
//                           border: Border.all(width: 1, color: Colors.white),
//                           borderRadius: BorderRadius.all(Radius.circular(20)),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset("images/mike.png"),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 4),
//                               child: Column(
//                                 children: [
//                                   Text("Ask",
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 9)),
//                                   Text("KLIP",
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 10)),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 10,
//                     ),
//                     Container(
//                       height: 33,
//                       width: MediaQuery.of(context).size.width / 5.7,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         color: Colors.white,
//                       ),
//                       child: Center(
//                         child: Text("Human Resource Manager",
//                             style: TextStyle(
//                                 color: Color(0xff2B647F),
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold)),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(2.0),
//                       child: ClipOval(
//                         child: Material(
//                           color: Colors.white, // Button color
//                           child: InkWell(
//                             splashColor: Colors.white, // Splash color
//                             onTap: () {},
//                             child: SizedBox(
//                                 width: MediaQuery.of(context).size.width / 37,
//                                 height: 33,
//                                 child: Icon(
//                                   Icons.add,
//                                   color: Color(0xff2B647F),
//                                 )),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 20,
//                     ),
//                     Container(
//                         height: 33,
//                         width: MediaQuery.of(context).size.width / 8.5,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(20)),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(
//                                 Icons.phone,
//                                 color: Color(0xff2B647F),
//                                 size: 20,
//                               ),
//                               Icon(
//                                 Icons.comment,
//                                 color: Color(0xff2B647F),
//                                 size: 20,
//                               ),
//                               Icon(
//                                 Icons.mail,
//                                 color: Color(0xff2B647F),
//                                 size: 20,
//                               )
//                             ])),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 60,
//                     ),
//                     Container(
//                       height: 33,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 1, color: Colors.white),
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                       ),
//                       child: Material(
//                         shape: CircleBorder(),
//                         color: Colors.transparent,
//                         child: InkWell(
//                           customBorder: CircleBorder(),
//                           onTap: () {},
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Admin",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.arrow_drop_down_rounded,
//                                   color: Colors.white, // Set icon color
//                                 ),
//                               ]),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 60,
//                     ),
//                     InkWell(
//                       splashColor: Colors.white, // Splash color
//                       onTap: () {},
//                       child: SizedBox(
//                           width: MediaQuery.of(context).size.width / 37,
//                           height: 33,
//                           child: Icon(
//                             Icons.notifications_none_outlined,
//                             color: Colors.white,
//                           )),
//                     ),
//                     InkWell(
//                       splashColor: Colors.white, // Splash color
//                       onTap: () {},
//                       child: SizedBox(
//                           width: MediaQuery.of(context).size.width / 37,
//                           height: 33,
//                           child: Icon(
//                             Icons.settings,
//                             color: Colors.white,
//                           )),
//                     ),
//                   ])),
//             ),
//           ],
//         ),
//
//         ///second row title heading
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(24),
//                   color: Color(0xFF50B5E5),
//                   boxShadow: [
//                     BoxShadow(
//                       // color: Colors.black.withOpacity(0.2),
//                       color: Colors.black.withOpacity(0.25),
//                       spreadRadius: 1,
//                       blurRadius: 4,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 height: 30,
//                 width: appBarController.toptabBarViewWidth,
//                 child: TabBar(
//                   tabs: appBarController.toptabs,
//                   dividerColor: Colors.transparent,
//                   indicator: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50), // Creates border
//                       color: Colors.white),
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   indicatorColor: Colors.white,
//                   labelColor: Color(0xFF686464),
//                   labelStyle: TextStyle(
//                     fontFamily: 'FiraSans',
//                     fontSize: 12,
//                     color: Color(0xFF686464),
//                     fontWeight: FontWeight.w600,
//                   ),
//                   unselectedLabelColor: Colors.white,
//                 ),
//               ),
//             ),
//             Container(
//               height: appBarController.toptabBarViewHeight,
//               child: TabBarView(
//                 children: appBarController.toptabViews,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
