import 'package:flutter/material.dart';
import 'package:micard/lab5.dart';
import 'package:micard/lab6/providers/quiz_provider.dart';
import 'package:micard/lab6/screens/quiz_screen.dart';
import 'package:provider/provider.dart';
import 'lab1.dart';
import 'lab2.dart';
import 'lab3.dart';
import 'lab4.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuizProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_5_outlined),
    activeIcon: Icon(Icons.looks_5_rounded),
    label: 'Lab 5',
    backgroundColor: Colors.tealAccent,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.looks_6_outlined),
    activeIcon: Icon(Icons.looks_6_rounded),
    label: 'Lab 6',
    backgroundColor: Colors.greenAccent,
  ),
];

class _NavigationRailPageState extends State<NavigationRailPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    IAmRich(),
    MiCard(),
    Dice(),
    MagicBallPage(),
    Xylophone(),
    QuizScreen(),
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
        bottomNavigationBar: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: List.generate(_navBarItems.length, (index) {
                return GestureDetector(
                  onTap: () => _onItemTapped(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: _selectedIndex == index ? _navBarItems[index].backgroundColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      children: [
                        _selectedIndex == index ? _navBarItems[index].activeIcon
                                                : _navBarItems[index].icon,
                        const SizedBox(width: 8.0),
                        Text(
                          _navBarItems[index].label!,
                          style: TextStyle(
                            color: _selectedIndex == index ? Colors.black87: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        )
      );
  }
}