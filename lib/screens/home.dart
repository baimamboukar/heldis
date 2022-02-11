import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';

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
          children: <Widget>[
            Block(
              title: "Faire l'appel",
              desc:
                  "Faites l'appel a la fin de chaque cour pour connaitre les eleves qui etaitent presents",
              icon: Icon(LineIcons.users, size: 40, color: Palette.success),
              nextScreen: const Home(),
            ),
            Block(
              title: "Signaler une indiscipline",
              desc:
                  "Si vous avez remarquer un eacrt de comportement d'un eleve, veuillez le renseigner ici",
              icon: Icon(
                LineIcons.stopCircle,
                color: Palette.error,
                size: 40,
              ),
              nextScreen: const Home(),
            ),
            Block(
              title: "Entrez les notes",
              desc: "Entrez la note des eleves a la fin de chaque evaluation",
              icon: Icon(
                LineIcons.newspaper,
                size: 40,
                color: Palette.primary,
              ),
              nextScreen: const Home(),
            ),
            Block(
              title: "Scanner une carte",
              desc: "Scannez la carte d'un eleve pour l'identifier",
              icon: Icon(
                Icons.qr_code,
                color: Palette.dark,
                size: 40,
              ),
              nextScreen: const Home(),
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
