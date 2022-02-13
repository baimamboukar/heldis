import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';

GlobalKey key = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Heldis"),
        leading: IconButton(
          icon: const Icon(Icons.analytics),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
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
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Block(
              title: "Faire l'appel",
              desc:
                  "Faites l'appel a la fin de chaque cour pour connaitre les eleves qui etaitent presents",
              icon: "assets/icons/presence.png",
              nextScreen: Home(),
            ),
            const Block(
              title: " Indiscipline",
              desc:
                  "Si vous avez remarquer un eacrt de comportement d'un eleve, veuillez le renseigner ici",
              icon: "assets/icons/indiscipline.png",
              nextScreen: Home(),
            ),
            const Block(
              title: "Entrez les notes",
              desc: "Entrez la note des eleves a la fin de chaque evaluation",
              icon: "assets/icons/grades.png",
              nextScreen: Home(),
            ),
            const Block(
              title: "Scanner une carte",
              desc: "Scannez la carte d'un eleve pour l'identifier",
              icon: "assets/icons/qrcode.png",
              nextScreen: Home(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            LottieBuilder.asset("assets/animations/star.json")
          ],
        ),
      ),
    );
  }
}
