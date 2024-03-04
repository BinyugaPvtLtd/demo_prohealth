import 'package:demo_prohealth/controller.dart';
import 'package:demo_prohealth/web_screen/switch_page_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class DesktopWebScreen extends StatelessWidget {
  final MyController myController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop Web Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Desktop Web Screen Content',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Desktop Web Button'),
            ),
            Spacer(), // Add a spacer to push the bottom navigation bar to the middle
            SizedBox(
                height: 60,
                child: BottomNavBar.getBottomNavigationBar()), // Call the method here
            SizedBox(height: 20),
            // SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Container(
            //       color: Colors.blueGrey,
            //       height: 180,
            //         width: MediaQuery.of(context).size.width/3,
            //     ),
            //       Container(
            //         color: Colors.blueGrey,
            //         height: 180,
            //         width: MediaQuery.of(context).size.width/3,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 180,
                //width: MediaQuery.of(context).size.width/0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Column(),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Column(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo[100],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
