import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final Icon icon;
  final String title;
  final String desc;
  final Widget nextScreen;
  const Block(
      {Key? key,
      required this.icon,
      required this.title,
      required this.desc,
      required this.nextScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: icon,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: icon,
            )
          ],
        ),
      ),
    );
  }
}
