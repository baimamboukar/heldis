import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/button.dart';
import 'package:heldis/widgets/labeltile.dart';
import 'package:heldis/widgets/student_tile.dart';
import 'package:line_icons/line_icons.dart';

class Indiscipline extends StatelessWidget {
  const Indiscipline({Key? key}) : super(key: key);
  static const routeName = '/indiscipline';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Indiscipline"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: [
              Labeltile(
                  widget: DropdownButton<String>(
                    underline: const SizedBox.shrink(),
                    value: "2nde C",
                    items: <String>["2nde C", "1ere TI", "4e PEBS"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    hint: const Text(
                      "Choisir classe",
                    ),
                    onChanged: (String? currentValue) {},
                  ),
                  label: "Classe",
                  icon: LineIcons.check),
              Card(
                child: Container(
                  height: 60.0,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      underline: const SizedBox.shrink(),
                      value: "Bavardage en classe",
                      items: <String>[
                        "Bavardage en classe",
                        "Escalade mur",
                        "Indiscipline caracterisee",
                        "Refus de balayage"
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: const Text(
                        "Choisir motif",
                      ),
                      onChanged: (String? currentValue) {},
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Tout selectionner",
                    style: Styles.designText(
                        color: Palette.dark, size: 18.0, bold: true),
                  ),
                  const SizedBox(width: 20.0),
                  CircleAvatar(
                    child: const Icon(LineIcons.check),
                    radius: 22.0,
                    backgroundColor: Colors.grey.shade300,
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              for (int i = 0; i <= 10; i++)
                StudentTile(
                    names: "Samuel Mbas", isPresent: i % 2 == 0 ? false : true),
              Button(
                  text: "Enregistrer",
                  callback: () {},
                  withGradient: false,
                  icon: LineIcons.check,
                  color: Palette.primary)
            ],
          ),
        ),
      ),
    );
  }
}
