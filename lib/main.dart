import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heldis/firebase_options.dart';
import 'package:heldis/screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: Heldis()));
}

class Heldis extends StatelessWidget {
  const Heldis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "heldis",
      home: Home(),
      color: Color.fromARGB(255, 46, 76, 245),
    );
  }
}
