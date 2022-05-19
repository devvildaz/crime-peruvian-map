import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatefulWidget {
  const NewsContainer({Key? key}) : super(key: key);

  @override
  _NewsContainerState createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  List<Container> list =
      List<Container>.generate(10, (i) => Container(color: Colors.blueGrey));
  @override
  Widget build(BuildContext context) {
    return GridView(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15),
      children: list,
    );
  }
}
