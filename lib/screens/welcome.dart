import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          CircleAvatar(
            radius: 68.0,
            backgroundColor: Palette.success,
            child: Text(
              "H",
              style: Styles.designText(
                  color: Palette.primary, size: 40, bold: true),
            ),
          )
        ],
      ),
    ));
  }
}
