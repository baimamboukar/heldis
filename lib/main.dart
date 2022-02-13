import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heldis/firebase_options.dart';
import 'package:heldis/screens/screens.dart';
import 'package:heldis/screens/student_details.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  });

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
          primarySwatch: const MaterialColor(
            0xFF0E0062,
            <int, Color>{
              50: Color(0xFFA4A4BF),
              100: Color(0xFFA4A4BF),
              200: Color(0xFFA4A4BF),
              300: Color(0xFF9191B3),
              400: Color(0xFF7F7FA6),
              500: Color(0xFF181861),
              600: Color(0xFF6D6D99),
              700: Color(0xFF5B5B8D),
              800: Color(0xFF494980),
              900: Color(0xFF181861),
            },
          ),
          textTheme: GoogleFonts.openSansTextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case Home.routeName:
                    return const Home();

                  case Appel.routeName:
                    return const Appel();
                  case Indiscipline.routeName:
                    return const Indiscipline();
                  case Welcome.routeName:
                    return const Welcome();
                  case Login.routeName:
                    return const Login();
                  case ParentHome.routeName:
                    return const ParentHome();
                  case StudentDetails.routeName:
                    return const StudentDetails();
                  case Presences.routeName:
                    return const Presences();
                  default:
                    return const Home();
                }
              });
        });
  }
}
