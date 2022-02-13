import 'package:flutter/material.dart';

class SchoolHome extends StatelessWidget {
  const SchoolHome({Key? key}) : super(key: key);
  static const String routeName = '/school-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ekorezock"),
        bottom: const TabBar(tabs: [
          Text("Classes"),
          Text("Enseignants"),
          Text("Eleves"),
        ]),
      ),
    );
  }
}
