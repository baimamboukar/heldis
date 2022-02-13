import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/input.dart';

class SchoolHome extends StatelessWidget {
  const SchoolHome({Key? key}) : super(key: key);
  static const String routeName = '/school-home';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Ekorezock"),
          bottom: const TabBar(
              enableFeedback: true,
              labelPadding: EdgeInsets.all(8.0),
              isScrollable: false,
              physics: BouncingScrollPhysics(),
              tabs: [
                Text("Classes"),
                Text("Enseignants"),
                Text("Eleves"),
              ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: SizedBox(
                  height: 68.0,
                  child: ListTile(
                    title: Text("6eme A"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: ListTile(
                  title: Text("M. EYEBE Marcelin"),
                  subtitle: Text("Francais: Tle C, 1ere All"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: const Text("6eme A"),
                  trailing: Container(
                      child: const Center(
                        child: Text("72"),
                      ),
                      height: 40.0,
                      width: 40.0,
                      color: const Color(0xFF21C507)),
                ),
              );
            },
          )
        ]),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog(
                useRootNavigator: false,
                context: context,
                builder: (context) {
                  return const Card(
                    child: Center(
                      child: Input(label: "Nom de la classe", hint: "classe"),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
