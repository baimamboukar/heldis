// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAJZWIYIx-S5_cGe52I0TWhZlg71BJWpCM',
    appId: '1:754415622536:web:f96536633026dbd226023d',
    messagingSenderId: '754415622536',
    projectId: 'heldis',
    authDomain: 'heldis.firebaseapp.com',
    storageBucket: 'heldis.appspot.com',
    measurementId: 'G-7M668TB0BN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuIYORjL0BbJHbRWvQSv2yLFezjB1ImuY',
    appId: '1:754415622536:android:0707b6d033da472126023d',
    messagingSenderId: '754415622536',
    projectId: 'heldis',
    storageBucket: 'heldis.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxEosnjJ4rYbH20A0i72tWKg8Ksd0K13Q',
    appId: '1:754415622536:ios:ff12b2236f3b819026023d',
    messagingSenderId: '754415622536',
    projectId: 'heldis',
    storageBucket: 'heldis.appspot.com',
    iosClientId:
        '754415622536-ecg37l85abdco8s93svupi5pgvuggi95.apps.googleusercontent.com',
    iosBundleId: 'app.heldis.com',
  );
}
