import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class StudentTile extends StatelessWidget {
  final String names;
  final bool isPresent;
  const StudentTile({Key? key, required this.names, required this.isPresent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isPresent
            ? Palette.success.withOpacity(0.2)
            : Palette.error.withOpacity(0.2),
      ),
      height: 60.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.person,
              size: 25.0,
            ),
            Text(
              names,
              style: Styles.designText(
                  color: Palette.dark, size: 18.0, bold: true),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 18.0,
                ),
                const Text("8"),
                Expanded(
                  child: Icon(
                    LineIcons.checkCircleAlt,
                    size: 25.0,
                    color: isPresent ? Palette.success : Palette.secondary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}