import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:heldis/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class Presences extends StatelessWidget {
  const Presences({Key? key}) : super(key: key);
  static const String routeName = '/presences';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Presences")),
      body: GroupedListView(
          groupSeparatorBuilder: (String group) => Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  const Center(child: Divider()),
                  Center(
                    child: Chip(label: Text(group)),
                  )
                ],
              ),
          elements: historic,
          itemBuilder: (context, PresenceLabel label) => label,
          groupBy: (PresenceLabel label) => label.date),
    );
  }
}

class PresenceLabel extends StatelessWidget {
  final String type;
  final String date;
  final String time;

  final String? message;
  final bool danger;
  const PresenceLabel(
      {Key? key,
      required this.type,
      required this.date,
      required this.time,
      this.message,
      required this.danger})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    LineIcons.user,
                    color: danger ? Palette.error : Palette.success,
                    size: 18.0,
                  ),
                  Text(
                    "Arrivee a l'ecole",
                    style: Styles.designText(
                        color: danger ? Palette.error : Palette.success,
                        size: 18.0,
                        bold: true),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                message ?? "",
                style: Styles.designText(
                    color: Palette.dark, size: 16.0, bold: false),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: const Color(0xFFF3F5FF),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

List<PresenceLabel> historic = [
  const PresenceLabel(
    type: "Arivee a l'ecole",
    date: "12/01/2022",
    time: "06h30",
    message: "Mbas Samuel est arrive a l'ecole a 6h30mins",
    danger: false,
  ),
  const PresenceLabel(
    type: "Absence en cours",
    date: "12/01/2022",
    time: "06h30",
    message: "Mbas Samuel etait absent au cours de mathematiques a 10H25",
    danger: true,
  ),
  const PresenceLabel(
    type: "Arivee a l'ecole",
    date: "12/03/2022",
    time: "06h30",
    message: "Mbas Samuel est arrive a l'ecole a 6h30mins",
    danger: false,
  ),
  const PresenceLabel(
    type: "Absence en cours",
    date: "12/03/2022",
    time: "06h30",
    message: "Mbas Samuel etait absent au cours de mathematiques a 10H25",
    danger: true,
  ),
  const PresenceLabel(
    type: "Arivee a l'ecole",
    date: "Aujourd'hui",
    time: "06h30",
    message: "Mbas Samuel est arrive a l'ecole a 6h30mins",
    danger: false,
  ),
  const PresenceLabel(
    type: "Absence en cours",
    date: "10/01/2022",
    time: "06h30",
    message: "Mbas Samuel etait absent au cours de mathematiques a 10H25",
    danger: true,
  ),
];
