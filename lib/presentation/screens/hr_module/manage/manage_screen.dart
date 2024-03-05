import 'package:demo_prohealth/app/column_constant.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../../../app/app_bar.dart';

class DesktopWebScreen extends StatefulWidget {
  @override
  State<DesktopWebScreen> createState() => _DesktopWebScreenState();
}

class _DesktopWebScreenState extends State<DesktopWebScreen> {
  final MyController myController = Get.find();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(100.0),
        //     child: MyAppBar(),
        //   ),
        //   body:
        Column(children: [
      MyAppBar(),
      Padding(
        padding: const EdgeInsets.only(right: 8, top: 5, bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 20,
                  decoration: BoxDecoration(
                    color: Color(0xFF52A889), // Background color of the card
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(8),
                    //     topLeft: Radius.circular(
                    //         8)), // Rounded corners
                    // border: Border.all(
                    //     color:
                    //     Color.fromRGBO(121, 121, 121, 0.25),
                    //     width: 1),
                    // Grey border
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        '100%',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black.withOpacity(0.2),
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Color(0xffB1D6F4), // Background color of the card
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)), // Rounded corners
                    ),
                    child: Column()),
              ],
            ),
          ],
        ),
      ),
      Spacer(),

      ///bottom but one containers
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 22),
          child: SizedBox(
            height: 200,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),

                      /// changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 50,
                      vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Employment #1',
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 13,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomColumn(
                              text1: 'Final Position Title',
                              text2: 'Start Date',
                              text3: 'End Date',
                              text4: 'Employer',
                              text5: 'Emergency Contact'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumnSub(
                              text1: 'Personal',
                              text2: 'Jerry Christ',
                              text3: '4541564214',
                              text4: 'Hamburg',
                              text5: 'Germany'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumn(
                              text1: 'Reason of Leaving',
                              text2: 'Last Supervisor’s Name',
                              text3: 'SuoerVisor\'s Phone No.',
                              text4: 'City',
                              text5: 'Country'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumnSub(
                              text1: 'Developer',
                              text2: '01-03-24',
                              text3: '22-03-24',
                              text4: 'John Smith',
                              text5: '9845632156'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 29,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 145.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Color(0xFF1696C8),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 150,
                                ), // Adjust the space between the icon and text as needed
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontFamily: 'FiraSans',
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            120,
                                    color: Color(0xFF1696C8),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/80,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                      /// changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 50,
                      vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Employment #2',
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 13,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomColumn(
                              text1: 'Final Position Title',
                              text2: 'Start Date',
                              text3: 'End Date',
                              text4: 'Employer',
                              text5: 'Emergency Contact'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumnSub(
                              text1: 'Personal',
                              text2: 'Jerry Christ',
                              text3: '4541564214',
                              text4: 'Hamburg',
                              text5: 'Germany'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 18,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumn(
                              text1: 'Reason of Leaving',
                              text2: 'Last Supervisor’s Name',
                              text3: 'SuoerVisor\'s Phone No.',
                              text4: 'City',
                              text5: 'Country'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          CustomColumnSub(
                              text1: 'Developer',
                              text2: '01-03-24',
                              text3: '22-03-24',
                              text4: 'John Smith',
                              text5: '9845632156'),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 29,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 145.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Color(0xFF1696C8),
                                ),
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 150,
                                ), // Adjust the space between the icon and text as needed
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontFamily: 'FiraSans',
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                    MediaQuery.of(context).size.width /
                                        120,
                                    color: Color(0xFF1696C8),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ]),
          )),

      SizedBox(
        height: 20,
      ),

      ///bottom line
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 120),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '#2031ABC01BA',
              style: TextStyle(
                  fontFamily: 'FiraSans',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  'Washington DC',
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '198.168.1.231',
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'images/powered_logo.png',
                  height: 23,
                  width: 30,
                ),
                Text(
                  'Powered by',
                  style: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
    // );
  }
}

class EditableButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const EditableButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Color(0xFF1696C8),
      ),
      label: Text(
        text,
        style: TextStyle(
          color: Color(0xFF1696C8),
          fontSize: MediaQuery.of(context).size.width / 120,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

// Container(
//   height: 100,
//   color: Colors.purpleAccent,
// ),
// Container(
//   height: 100,
//   color: Colors.pinkAccent,
// ),
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
