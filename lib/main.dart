import 'package:flutter/material.dart';
import 'package:mapsgui/layout/TabbedApp.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';

void main() {
  runApp(const MapApp());
}

class MapApp extends StatefulWidget {
  const MapApp({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MapApp> {
  @override
  void initState() {
    super.initState();
    hiddenStatusBar();
  }

  Future<void> hiddenStatusBar() async {
    await FlutterStatusbarManager.setHidden(true);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: TabbedApp());
  }
}
