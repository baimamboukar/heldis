import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

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
    return Padding(
      padding: const EdgeInsets.all(4.0) +
          const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        elevation: 5.0,
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: icon,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(title, style: Styles.header()),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(desc),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    child: Icon(LineIcons.arrowRight),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
