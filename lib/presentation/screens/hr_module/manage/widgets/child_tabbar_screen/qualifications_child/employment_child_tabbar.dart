import 'package:demo_prohealth/app/theme_manager.dart';
import 'package:demo_prohealth/presentation/screens/hr_module/manage/widgets/icon_button_constant.dart';
import 'package:flutter/material.dart';

class EmploymentContainerConstant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 35,
            vertical: MediaQuery.of(context).size.width / 130),
        child: Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ConstantWidget(),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 50,
                          vertical: MediaQuery.of(context).size.width / 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text('Final Position Title',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text('Start Date',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text('End Date',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text('Employer',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text('Emergency Contact',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text(
                                'Personal',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text(
                                'Jerry Christ',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text(
                                'T4541564214',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 130,
                              ),
                              Text(
                                'Hamburg',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'Germany',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Reason of Leaving',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Last Supervisor’s Name',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('SuperVisor\'s Phone No.',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('City',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Country',
                                  style: ThemeManagerBlack.customTextStyle(
                                      context)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'Developer',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '01-03-24',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '22-03-24',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'John Smith',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '9845632156',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120.0),
                            child: IconButtonWidget(
                                iconData: Icons.edit,
                                buttonText: 'Edit',
                                onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 50),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 50,
                          vertical: MediaQuery.of(context).size.width / 130),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Final Position Title',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Start Date',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('End Date',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Employer',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Emergency Contact',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'Personal',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Jerry Christ',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'T4541564214',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'Hamburg',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Germany',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Reason of Leaving',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Last Supervisor’s Name',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('SuoerVisor\'s Phone No.',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('City',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text('Country',
                                  style: ThemeManagerGrey.customTextStyle(
                                      context)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(''),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'Developer',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '01-03-24',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '22-03-24',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                'John Smith',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 120,
                              ),
                              Text(
                                '9845632156',
                                style:
                                    ThemeManagerDark.customTextStyle(context),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120.0),
                            child: IconButtonWidget(
                                iconData: Icons.edit,
                                buttonText: 'Edit',
                                onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
