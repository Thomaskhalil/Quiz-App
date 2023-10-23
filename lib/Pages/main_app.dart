import 'package:flutter/material.dart';
import 'package:moody/Pages/Moody/moody_home.dart';
import 'package:moody/Pages/WorkOut/work_out_home.dart';

//?
import 'package:moody/Pages/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  static const String routeName = "MainApp";
  @override
  Widget build(BuildContext context) {
    return MyTabs();
  }
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    MoodyHome(),
    WorkOutHome(),
    SplashScreen(),
    SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '●',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '●',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person_outlined),
          //   label: '●',
          // ),
        ],
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),
        backgroundColor: Colors.white,
        iconSize: 24,
      ),
    );
  }
}
