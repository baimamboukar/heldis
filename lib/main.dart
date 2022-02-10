import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return MaterialApp(
      title: "heldis",
      home: const Home(),
      color: const Color.fromARGB(255, 46, 76, 245),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 32, 9, 238),
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
