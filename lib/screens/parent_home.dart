import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({Key? key}) : super(key: key);
  static const String routeName = '/parent-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Text(
            "Cliquez sur le nom d'une personne pour voir ses informations",
            style:
                Styles.designText(color: Colors.black87, size: 20, bold: true),
          ),
          const SizedBox(height: 20),
          Text(
            "L'administration de l'ecole et vous, etes les seules personnes a avoir acces a ces informations",
            style:
                Styles.designText(color: Palette.dark, size: 18, bold: false),
          ),
        ],
      ),
    ));
  }
}
