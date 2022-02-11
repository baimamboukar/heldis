import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/labeltile.dart';
import 'package:line_icons/line_icons.dart';

class Appel extends StatelessWidget {
  const Appel({Key? key}) : super(key: key);
  static const routeName = '/appel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Appel"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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
              Labeltile(
                  widget: DropdownButton<String>(
                    underline: const SizedBox.shrink(),
                    value: "Mathematiques",
                    items: <String>["Mathematiques", "Physique", "Informatique"]
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
                      "Choisir matiere",
                    ),
                    onChanged: (String? currentValue) {},
                  ),
                  label: "Matiere",
                  icon: LineIcons.check),
              Row(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<int>(
                        underline: const SizedBox.shrink(),
                        value: 1,
                        items: <int>[1, 2, 3]
                            .map<DropdownMenuItem<int>>((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(
                              value.toString() + " heure(s)",
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: const Text(
                          "Choisir matiere",
                        ),
                        onChanged: (int? currentValue) {},
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
