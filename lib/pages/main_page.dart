import 'package:flutter/material.dart';
import 'package:travelapp/pages/bar_page.dart';
import 'package:travelapp/pages/home_page.dart';
import 'package:travelapp/pages/me_page.dart';
import 'package:travelapp/pages/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List pages = [
    HomePage(),
    BarPage(),
    SearchPage(),
    MePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.black54.withOpacity(0.2),
        elevation: 0,
        currentIndex: currentindex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Bars", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Me", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
