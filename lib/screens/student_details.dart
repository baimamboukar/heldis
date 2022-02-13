import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({Key? key}) : super(key: key);
  static const String routeName = '/student_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 176.0,
                  width: double.infinity,
                  color: Palette.primary,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 38.0,
                        color: Palette.light,
                      ),
                      title: Text(
                        "Samuel Mbas",
                        style: Styles.designText(
                            color: Palette.light, size: 22, bold: true),
                      ),
                      subtitle: Text("Tle D",
                          style: Styles.designText(
                              color: Palette.light, size: 18, bold: false)),
                    ),
                  )),
              Positioned(
                  top: 130.0,
                  left: 45.50,
                  right: 45.50,
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      height: 90.0,
                      width: 284.0,
                      decoration: BoxDecoration(
                          color: Palette.light,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "27",
                                    style: Styles.designText(
                                        color: Palette.primary,
                                        size: 30.0,
                                        bold: true),
                                  ),
                                  Text(
                                    "heures d'absence",
                                    style: Styles.designText(
                                        color: Palette.dark,
                                        size: 12.0,
                                        bold: false),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(
                              color: Palette.primary,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3",
                                  style: Styles.designText(
                                      color: Palette.primary,
                                      size: 30.0,
                                      bold: true),
                                ),
                                Text(
                                  "Indisciplines signalees",
                                  style: Styles.designText(
                                      color: Palette.dark,
                                      size: 12.0,
                                      bold: false),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 75.0,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/presences'),
                  child: const Box(
                      icon: "assets/icons/devoir.png", title: "Presences"),
                ),
                const Box(
                    icon: "assets/icons/timetable.png",
                    title: "Emploi du temps"),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Box(icon: "assets/icons/devoir.png", title: "Devoir"),
                Box(
                    icon: "assets/icons/indiscipline.png",
                    title: "Indiscipline"),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Box(icon: "assets/icons/grades.png", title: "Notes"),
                Box(icon: "assets/icons/devoir.png", title: "Profil"),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
