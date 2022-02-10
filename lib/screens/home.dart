import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heldis/widgets/block.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heldis"),
        leading: const Icon(Icons.analytics),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Block(
              title: "Faire l'appel",
              desc:
                  "Faites l'appel a la fin de chaque cour pour connaitre les eleves qui etaitent presents",
              icon: Icon(
                Icons.people,
                color: Color.fromARGB(255, 197, 178, 9),
                size: 30,
              ),
              nextScreen: Home(),
            ),
            Block(
              title: "Signaler une indiscipline",
              desc:
                  "Si vous avez remarquer un eacrt de comportement d'un eleve, veuillez le renseigner ici",
              icon: Icon(
                Icons.warning,
                color: Color.fromARGB(255, 197, 178, 9),
                size: 30,
              ),
              nextScreen: Home(),
            ),
            Block(
              title: "Entrez les notes",
              desc: "Entrez la note des eleves a la fin de chaque evaluation",
              icon: Icon(
                Icons.notes,
                color: Color.fromARGB(255, 197, 178, 9),
                size: 30,
              ),
              nextScreen: Home(),
            ),
            Block(
              title: "Scanner une carte",
              desc: "Scannez la carte d'un eleve pour l'identifier",
              icon: Icon(
                Icons.qr_code,
                color: Colors.grey,
                size: 50,
              ),
              nextScreen: Home(),
            ),
          ],
        ),
      ),
    );
  }
}
