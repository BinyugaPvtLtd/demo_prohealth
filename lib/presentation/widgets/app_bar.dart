import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// first row logo
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

        ///second row title heading
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 57),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Dashboard",
                          style: TextStyle(
                              color: Color(0xff686464),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Text("Manage",
                          style: TextStyle(
                              color: Color(0xff686464),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Text("Add Employee",
                          style: TextStyle(
                              color: Color(0xff686464),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Text("Register",
                          style: TextStyle(
                              color: Color(0xff686464),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Text(
                        "Onboarding",
                        style: TextStyle(
                            color: Color(0xff686464),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Container(
                          height: 26,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xff686464),
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff686464),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
