import 'package:flutter/material.dart';
import 'lab1.dart';
import 'lab2.dart';
import 'lab3.dart';
import 'lab4.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationRailPage(),
    );
  }
}

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_one_outlined),
    activeIcon: Icon(Icons.looks_one_rounded),
    label: 'Lab 1',
    backgroundColor: Colors.lightBlue,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_two_outlined),
    activeIcon: Icon(Icons.looks_two_rounded),
    label: 'Lab 2',
    backgroundColor: Colors.green,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_3_outlined),
    activeIcon: Icon(Icons.looks_3_rounded),
    label: 'Lab 3',
    backgroundColor: Colors.blueAccent,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_4_outlined),
    activeIcon: Icon(Icons.looks_4_rounded),
    label: 'Lab 4',
    backgroundColor: Colors.deepPurpleAccent,
  ),
];



class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    IAmRich(),
    MiCard(),
    Dice(),
    MagicBallPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: _navBarItems,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          onTap: _onItemTapped,
        ),
      );
  }
}