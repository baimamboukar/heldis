import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            "Enseignant",
            style: Styles.designText(size: 28, color: Palette.dark, bold: true),
          ),
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
            "Connectez-vous",
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
