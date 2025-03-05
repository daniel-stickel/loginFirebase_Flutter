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
    apiKey: 'AIzaSyBzL1zWe-yEt_kA5O1K1DRMyFeWD5pTG-0',
    appId: '1:225586733848:web:068bd7ed809f30425e746d',
    messagingSenderId: '225586733848',
    projectId: 'teste-horas-v3',
    authDomain: 'teste-horas-v3.firebaseapp.com',
    storageBucket: 'teste-horas-v3.firebasestorage.app',
    measurementId: 'G-WJXM4SJWCL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2cSLgPqBxCpPrSWko5CLGIh82sNndnc8',
    appId: '1:225586733848:android:16ed1c3133245f405e746d',
    messagingSenderId: '225586733848',
    projectId: 'teste-horas-v3',
    storageBucket: 'teste-horas-v3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOQ9b6D3_XuLzHS8Ben-Td6Z6HnSK3uGI',
    appId: '1:225586733848:ios:57376f59b2afbd7b5e746d',
    messagingSenderId: '225586733848',
    projectId: 'teste-horas-v3',
    storageBucket: 'teste-horas-v3.firebasestorage.app',
    iosBundleId: 'com.example.testeFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBzL1zWe-yEt_kA5O1K1DRMyFeWD5pTG-0',
    appId: '1:225586733848:web:cd523797a89c96555e746d',
    messagingSenderId: '225586733848',
    projectId: 'teste-horas-v3',
    authDomain: 'teste-horas-v3.firebaseapp.com',
    storageBucket: 'teste-horas-v3.firebasestorage.app',
    measurementId: 'G-31Z7ZD4988',
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