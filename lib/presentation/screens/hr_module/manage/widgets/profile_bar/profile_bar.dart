import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Column(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'images/profile.png',
                                height: 30,
                                width: 30,
                              ),
                              // you can replace
                              const CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.green),
                                strokeWidth: 0.9,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
