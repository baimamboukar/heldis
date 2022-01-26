import 'package:flutter/material.dart';
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
          children: <Widget>[
            SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.0),
                          gradient: LinearGradient(colors: [
                            Colors.orange,
                            Colors.orange.withOpacity(0.6),
                            Colors.purple
                          ]),
                          boxShadow: const [
                            BoxShadow(color: Colors.purple, blurRadius: 10),
                            BoxShadow(
                                color: Colors.orange,
                                blurRadius: 6,
                                offset: Offset(100, 70))
                          ],
                        ),
                        child: Stack(
                          children: const [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Ionicons.analytics,
                                size: 100,
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text("Students Analytics"))
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
