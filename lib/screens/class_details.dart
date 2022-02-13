import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class ClassDetails extends StatelessWidget {
  const ClassDetails({Key? key}) : super(key: key);
  static const String routeName = '/class-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("6eme B"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (String student in names)
              Card(
                child: ListTile(
                  title: Text(student),
                  subtitle: const Text("6eme A"),
                  trailing: const Icon(Icons.more_vert),
                ),
              )
          ],
        ),
      ),
    );
  }
}
