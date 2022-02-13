import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

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
          bottom: TabBar(
              indicatorPadding: const EdgeInsets.all(10.0),
              indicatorColor: Palette.success,
              enableFeedback: true,
              physics: const BouncingScrollPhysics(),
              tabs: const [
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
                child: ListTile(
                  title: Text("6eme A"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: ListTile(
                  title: Text("6eme A"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: ListTile(
                  title: Text("6eme A"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
          )
        ]),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
