// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAcUj6QD2jUj4JpXciv50zRsa_CYHoJMNU',
    appId: '1:614326133486:web:1073905d927c19db5c89ff',
    messagingSenderId: '614326133486',
    projectId: 'testehoramarco',
    authDomain: 'testehoramarco.firebaseapp.com',
    storageBucket: 'testehoramarco.firebasestorage.app',
    measurementId: 'G-Q71RL9RSNG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBC3Kdn5RFBNfjsPgZPORvzZvLUMX2ouDY',
    appId: '1:614326133486:android:78502c04245391655c89ff',
    messagingSenderId: '614326133486',
    projectId: 'testehoramarco',
    storageBucket: 'testehoramarco.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACONEpfMWhhS6w4kLy2TrkB80NGPwm_lo',
    appId: '1:614326133486:ios:574916ae7f0e19145c89ff',
    messagingSenderId: '614326133486',
    projectId: 'testehoramarco',
    storageBucket: 'testehoramarco.firebasestorage.app',
    iosBundleId: 'com.example.testeFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAcUj6QD2jUj4JpXciv50zRsa_CYHoJMNU',
    appId: '1:614326133486:web:114033982235096a5c89ff',
    messagingSenderId: '614326133486',
    projectId: 'testehoramarco',
    authDomain: 'testehoramarco.firebaseapp.com',
    storageBucket: 'testehoramarco.firebasestorage.app',
    measurementId: 'G-716F4F5XH0',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOQ9b6D3_XuLzHS8Ben-Td6Z6HnSK3uGI',
    appId: '1:225586733848:ios:57376f59b2afbd7b5e746d',
    messagingSenderId: '225586733848',
    projectId: 'teste-horas-v3',
    storageBucket: 'teste-horas-v3.firebasestorage.app',
    iosBundleId: 'com.example.testeFirebase',
  );

}