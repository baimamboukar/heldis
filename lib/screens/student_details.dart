import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

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
            clipBehavior: Clip.antiAlias,
            children: [
              Container(height: 176.0, color: Palette.primary),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(height: 120.0, color: Colors.red))
            ],
          )
        ],
      ),
    ));
  }
}
