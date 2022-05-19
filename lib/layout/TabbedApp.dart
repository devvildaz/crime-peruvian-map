import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapsgui/screen/HomeScreen.dart';
import 'package:mapsgui/screen/MapScreen.dart';

class TabbedApp extends StatefulWidget {
  const TabbedApp({Key? key}) : super(key: key);

  @override
  _TabbedAppState createState() => _TabbedAppState();
}

class _TabbedAppState extends State<TabbedApp> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[HomeScreen(), MapScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        ],
        currentIndex: _selectedIndex,
        onTap: _handleOnTap,
      ),
    );
  }

  void _handleOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
