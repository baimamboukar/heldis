import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55.0,
      backgroundColor: Palette.success.withOpacity(0.35),
      child: Text(
        "H",
        style: Styles.designText(color: Palette.primary, size: 70, bold: true),
      ),
    );
  }
}
