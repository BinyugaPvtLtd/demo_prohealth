import 'package:flutter/material.dart';

import '../../../../../../app/theme_manager.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 6),
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
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Color(0xFF52A889),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Profile\n100%",
                        style: ThemeManagerWhite.customTextStyle(context),
                      ),
                    ])),
          ),
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
                child: Row(
                  children: [
                    ///1st column
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 16, left: 15, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ///image
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'images/profile.png',
                                  height: 50,
                                  width: 50,
                                ),
                                // you can replace
                                SizedBox(
                                  height: 53,
                                  width: 53,
                                  child: const CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                    strokeWidth: 3,
                                    value: 0.70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Active",
                            style: ThemeManagerBlack.customTextStyle(context),
                          ),
                          Text(
                            "Annual skills 92%",
                            style: ThemeManagerGrey.customTextStyle(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),

                    ///2 nd column
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "John Scott",
                            style: ThemeManagerBlack.customTextStyle(context),
                          ),
                          Container(
                            height: 17,
                            width: 110,
                            child: ElevatedButton(
                              child: Text(
                                "Physical Thearpy",
                                style:
                                ThemeManagerWhite.customTextStyle(context),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                elevation: 3,
                                primary: Colors.redAccent,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            "Employment Type",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Saan joes.24",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Address",
                            style: ThemeManagerBlack.customTextStyle(context),
                          ),
                          Text(
                            "House No., Street No.\n Area City, Zip Code",
                            textAlign: TextAlign.start,
                            style:
                            ThemeManagerAccentblue.customTextStyle(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),

                    /// 3rd column
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "Age",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Gender",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Social Security No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Phone No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Personal No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Work No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),

                    /// 4th column
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "05-03-1997(27)",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Male",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "****-**-***",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Row(
                            children: [
                              Text(
                                "(+1)-123-567",
                                style:
                                ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.phone,
                                color: Colors.green,
                                size: 13,
                              ),
                              Icon(
                                Icons.comment,
                                color: Colors.blue,
                                size: 13,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "(+1)-123-567",
                                style:
                                ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.phone,
                                color: Colors.green,
                                size: 13,
                              ),
                              Icon(
                                Icons.comment,
                                color: Colors.blue,
                                size: 13,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "(+1)-123-567",
                                style:
                                ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.phone,
                                color: Colors.green,
                                size: 13,
                              ),
                              Icon(
                                Icons.comment,
                                color: Colors.blue,
                                size: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),

                    ///5th column
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "Personal Email",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Work Email",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Zone",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Speciality ",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Service",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Work No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),

                    /// 6th column
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text("personal@gmail.com",
                              style: TextStyle(
                                fontFamily: 'FiraSans',
                                fontSize: 9,
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blueAccent,
                              )),
                          Text(
                            "personal@gmail.com",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blueAccent,
                            ),
                          ),
                          Text(
                            "Prohealth San Joes 74",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Phone No.",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "Physical Thearpy",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                          Text(
                            "NA",
                            style: ThemeManagerDark.customTextStyle(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),

                    ///7th column
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ///text john scott
                          Row(
                            children: [
                              Text(
                                "Hide Date",
                                style:
                                ThemeManagerDark.customTextStyle(context),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 40,
                              ),
                              Text(
                                "09/02/2024(11 PM)",
                                style:
                                ThemeManagerDark.customTextStyle(context),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Expired License",
                                style: ThemeManagerAccentblue.customTextStyle(
                                    context),
                              ),
                              ClipOval(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade600,
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: const Offset(0, 15))
                                        ]),
                                    child: Text(
                                      "0",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "About To Expired License",
                                style: ThemeManagerAccentblue.customTextStyle(
                                    context),
                              ),
                              ClipOval(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade600,
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: const Offset(0, 15))
                                        ]),
                                    child: Text(
                                      "2",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Up To Date License",
                                style: ThemeManagerAccentblue.customTextStyle(
                                    context),
                              ),
                              ClipOval(
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade600,
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: const Offset(0, 15))
                                        ]),
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
