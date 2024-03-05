import 'package:demo_prohealth/app/column_constant.dart';
import 'package:flutter/material.dart';

class employment_widget extends StatelessWidget {
  const employment_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            width: MediaQuery.of(context).size.width / 150,
                          ), // Adjust the space between the icon and text as needed
                          Text(
                            'Edit',
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontWeight: FontWeight.w700,
                              fontSize: MediaQuery.of(context).size.width / 120,
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
      ],
    );
  }
}
