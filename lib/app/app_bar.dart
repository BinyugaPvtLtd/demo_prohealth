import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,top: 16,bottom: 8),
        color: Colors.white,

        child: Row(
        children: [
          Image.asset('images/logo.png'),
          SizedBox(width: 16.0),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(
                        15)),
                color: Color(0xFF51B5E6),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32.0,
                    width: MediaQuery.of(context).size.width * 0.2,
                   // color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    height: 32.0,
                    width: MediaQuery.of(context).size.width * 0.2,
                   // color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    height: 32.0,
                    width: MediaQuery.of(context).size.width * 0.2,
                   // color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // CircleAvatar(
          //   radius: 16.0,
          //   bazckgroundImage: NetworkImage('https://via.placeholder.com/150'),
          // ),
        ],
      ),
    );
  }
}

