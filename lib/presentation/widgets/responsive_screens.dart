import 'package:demo_prohealth/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../screens/hr_module/manage/controller/controller.dart';
import '../tab_screen/tab_screen.dart';

///
class ResponsivePage extends StatelessWidget {
  final MyController controller;
  ResponsivePage({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          controller.checkScreenType(screenWidth);
          if (controller.isTabletScreen.value) {
            return Container(height: 1000, child: TabletScreen());
          } else {
            // return DesktopWebScreen();
            return SingleChildScrollView(
                scrollDirection: Axis.vertical, child: HomeScreen());
          }
        },
      ),
    );
  }
}

///

// class ResponsivePage extends StatelessWidget {
//   final MyController controller;
//
//   ResponsivePage({required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           double screenWidth = constraints.maxWidth;
//           controller.checkScreenType(screenWidth);
//
//           if (controller.isTabletScreen.value) {
//             return Container(
//               height: 1000,
//               child: TabletScreen(),
//             );
//           } else {
//             return HomeScreen();
//           }
//         },
//       ),
//     );
//   }
// }
