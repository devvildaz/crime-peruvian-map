import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mapsgui/components/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Container(color: Colors.yellow, height: 100, child: NewsContainer()),
      Container(
          color: Colors.blueGrey,
          height: 500,
          child: const Text("Common history positions"))
    ];

    return Container(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        color: Colors.blueAccent,
        width: double.infinity,
        child: GridView.count(crossAxisCount: 1, children: widgets));
  }
}
