import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/bottom_row.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/employment_container_constant.dart';
import 'package:demo_prohealth/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class DesktopWebScreen extends StatefulWidget {
  @override
  State<DesktopWebScreen> createState() => _DesktopWebScreenState();
}

class _DesktopWebScreenState extends State<DesktopWebScreen> {
  final MyController myController = Get.find();
  int _currentIndex = 0;

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

        ///bottomppbar 1
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff50B5E5),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),

        ///bottombar 2
        Center(
          child: Container(
            height: 30,
            width: 400,
            decoration: BoxDecoration(
                color: Color(0xff50B5E5),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),

        ///sliding view of bottom bar
        // Expanded(
        //   flex: 1,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       EmploymentWidget(),
        //       SizedBox(
        //         width: 20,
        //       ),
        //       EmploymentWidget(),
        //     ],
        //   ),
        // ),
        EmploymentContainerConstant(),
        SizedBox(
          height: 10,
        ),
        BottomBarRow(),
        SizedBox(
          height: 10,
        )
      ]),
    );
    // ));
  }
}
