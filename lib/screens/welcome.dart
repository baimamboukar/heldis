import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/button.dart';

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
          const SizedBox(height: 90),
          Center(
            child: CircleAvatar(
              radius: 55.0,
              backgroundColor: Palette.success.withOpacity(0.35),
              child: Text(
                "H",
                style: Styles.designText(
                    color: Palette.primary, size: 70, bold: true),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Vous etes ?",
            style: Styles.designText(size: 28, color: Palette.dark, bold: true),
          ),
          const SizedBox(height: 30),
          Button(
              text: "Parent",
              callback: () {},
              withGradient: false,
              color: Palette.primary),
          Button(
              text: "Enseignant",
              callback: () {},
              withGradient: false,
              color: Palette.primary),
          Button(
              text: "Ecole",
              callback: () {},
              withGradient: false,
              color: Palette.primary),
        ],
      ),
    ));
  }
}
