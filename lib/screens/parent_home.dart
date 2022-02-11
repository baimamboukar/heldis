import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({Key? key}) : super(key: key);
  static const String routeName = '/parent-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Heldis"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  "Cliquez sur le nom d'une personne pour voir ses informations",
                  style: Styles.designText(
                      color: Colors.black87, size: 20, bold: true),
                ),
                const SizedBox(height: 20),
                Text(
                  "L'administration de l'ecole et vous, etes les seules personnes a avoir acces a ces informations",
                  style: Styles.designText(
                      color: Palette.dark, size: 18, bold: false),
                ),
              ],
            ),
          ),
        ));
  }
}
