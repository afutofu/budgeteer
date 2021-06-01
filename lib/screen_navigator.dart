import "package:flutter/material.dart";
import "package:budgeteer/screens/home/home.screen.dart";
import "package:budgeteer/screens/logs/logs.screen.dart";
import "package:budgeteer/screens/settings/settings.screen.dart";

class ScreenNavigator extends StatefulWidget {
  @override
  _ScreenNavigatorState createState() => _ScreenNavigatorState();
}

class _ScreenNavigatorState extends State<ScreenNavigator> {
  int _currentScreenIndex = 1;

  final tabs = [
    LogsScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreenIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.brown[300],
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: "Logs"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (index) {
          setState(() => _currentScreenIndex = index);
        },
      ),
    );
  }
}
