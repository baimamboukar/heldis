import 'package:flutter/material.dart';
import 'package:heldis/widgets/block.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heldis"),
        leading: const Icon(Ionicons.analytics),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            SizedBox(
              height: 200,
              child: Block(
                title: "Classes",
                desc: "Liste des classes",
                icon: Icon(Ionicons.accessibility),
                nextScreen: Home(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
