import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Box extends StatelessWidget {
  final String icon;
  final String title;
  const Box({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: const Color(0xFFF3F5FF),
      child: Container(
        height: 120.0,
        width: 150.0,
        decoration: BoxDecoration(
            //border: Border.all(color: Palette.primary, width: 1.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                icon,
                height: 60.0,
                width: 60.0,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                title,
                style: Styles.designText(
                    color: Palette.dark, size: 18.0, bold: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
