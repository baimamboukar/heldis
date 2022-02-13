import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/button.dart';
import 'package:heldis/widgets/widgets.dart';

class ValidateOTP extends StatelessWidget {
  const ValidateOTP({Key? key}) : super(key: key);
  static const String routeName = '/validate-otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25.0,
              ),
              const Logo(),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Verification du numero de telephone",
                style: Styles.designText(
                    size: 20, color: Colors.black45, bold: true),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Veuillez entrer le code a quatre chiffres que nous vous avons envoyer par SMS",
                style: Styles.designText(
                    size: 16, color: Palette.dark, bold: true),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Input(label: "No Telephone", hint: "Entrez votre numero"),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Se souvenir de moi",
                    style: Styles.designText(
                        size: 18, color: Palette.dark, bold: true),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Button(
                  text: "Confirmer",
                  callback: () {
                    Navigator.pushNamed(context, '/validate-otp');
                  },
                  withGradient: false,
                  color: Palette.primary)
            ],
          ),
        ),
      ),
    );
  }
}
