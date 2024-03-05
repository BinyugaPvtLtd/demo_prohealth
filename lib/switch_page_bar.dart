import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar {
  static Widget getBottomNavigationBar() {
    final List<Widget> _pages = [
      Page1(),
      Page2(),
      Page3(),
    ];

    final List<String> _pageTitles = [
      'Page 1',
      'Page 2',
      'Page 3',
    ];

    final RxInt _selectedIndex = 0.obs;

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(_pageTitles[_selectedIndex.value])),
      ),
      body: Obx(() => _pages[_selectedIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex.value,
        onTap: (index) => _selectedIndex.value = index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 3'),
    );
  }
}
