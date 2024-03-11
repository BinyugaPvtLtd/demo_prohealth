import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        "100%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      )
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
                      padding: const EdgeInsets.only(
                          top: 16, left: 15, right: 7, bottom: 10),
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
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Annual skills 92%",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///2 nd column
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 15, right: 7, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "John Scott",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 17,
                            width: 110,
                            child: ElevatedButton(
                              child: Text(
                                "Physical Thearpy",
                                style: TextStyle(
                                  fontFamily: 'FiraSans',
                                  fontSize: 6,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.w200,
                                ),
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
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Saan joes.24",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "House No., Street No.\n Area City, Zip Code",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// 3rd column
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                        left: 15,
                        right: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "Age",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Social Security No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Phone No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Personal No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Work No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// 4th column
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, right: 35, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "05-03-1997(27)",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "(+1)-123-567",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "(+1)-123-567",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "(+1)-123-567",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "(+1)-123-567",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///5th column
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                        left: 15,
                        right: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
                          Text(
                            "Personal Email",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Work Email",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Zone",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Speciality ",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Service",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Work No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// 6th column
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, right: 7, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
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
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Phone No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Physical Thearpy",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "NA",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),

                    ///7th column
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, right: 7, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///text john scott
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
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Phone No.",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "Physical Thearpy",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Text(
                            "NA",
                            style: TextStyle(
                              fontFamily: 'FiraSans',
                              fontSize: 9,
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
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
