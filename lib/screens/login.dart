import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/button.dart';
import 'package:heldis/widgets/input.dart';
import 'package:heldis/widgets/widgets.dart';

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
          const SizedBox(height: 50),
          Text(
            "Enseignant",
            style: Styles.designText(size: 28, color: Palette.dark, bold: true),
          ),
          const SizedBox(height: 20),
          const Center(child: Logo()),
          const SizedBox(height: 30),
          Text(
            "Connectez-vous",
            style: Styles.designText(size: 28, color: Palette.dark, bold: true),
          ),
          const SizedBox(height: 30),
          const Input(label: "Matricule", hint: "Entrez votre matricule"),
          const Input(label: "Code d'acces", hint: "Entrez votre code"),
          Button(
              text: "Confirmer",
              callback: () {},
              withGradient: false,
              color: Palette.primary)
        ],
      ),
    ));
  }
}
