import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
      ),
      child: Row(
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
            ),
          ),
        ],
      ),
    );

    Container(
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset('images/logo.png'),
          SizedBox(width: 16.0),
          Expanded(
            child: Container(

                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       height: 32.0,
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       // color: Colors.white,
                //     ),
                //     SizedBox(width: 8.0),
                //     Container(
                //       height: 32.0,
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       // color: Colors.white,
                //     ),
                //     SizedBox(width: 8.0),
                //     Container(
                //       height: 32.0,
                //       width: MediaQuery.of(context).size.width * 0.2,
                //       // color: Colors.white,
                //     ),
                //   ],
                // ),
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
