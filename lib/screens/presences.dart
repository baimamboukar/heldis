import 'package:flutter/material.dart';

class Presences extends StatelessWidget {
  const Presences({Key? key}) : super(key: key);
  static const String routeName = '/presences';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Presences")),
    );
  }
}
