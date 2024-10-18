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
    apiKey: 'AIzaSyCF1N_haFlmARH-6laspfXNaiUzlhrY-E4',
    appId: '1:620067228024:web:9f37683ae7f7ac0f62a08d',
    messagingSenderId: '620067228024',
    projectId: 'flutter-final-exam2-fa273',
    authDomain: 'flutter-final-exam2-fa273.firebaseapp.com',
    storageBucket: 'flutter-final-exam2-fa273.appspot.com',
    measurementId: 'G-4RZXZY3CHP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvKFTh7vSYw1wkZ4QRWid4W-kdOb19Hn0',
    appId: '1:620067228024:android:f66ff84042135a8762a08d',
    messagingSenderId: '620067228024',
    projectId: 'flutter-final-exam2-fa273',
    storageBucket: 'flutter-final-exam2-fa273.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFsfCBDrFDCvCAXSkBzkphy3Hg7HV69WI',
    appId: '1:620067228024:ios:18d40f139cb7e31e62a08d',
    messagingSenderId: '620067228024',
    projectId: 'flutter-final-exam2-fa273',
    storageBucket: 'flutter-final-exam2-fa273.appspot.com',
    iosBundleId: 'com.example.flutterFinalExam2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFsfCBDrFDCvCAXSkBzkphy3Hg7HV69WI',
    appId: '1:620067228024:ios:18d40f139cb7e31e62a08d',
    messagingSenderId: '620067228024',
    projectId: 'flutter-final-exam2-fa273',
    storageBucket: 'flutter-final-exam2-fa273.appspot.com',
    iosBundleId: 'com.example.flutterFinalExam2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCF1N_haFlmARH-6laspfXNaiUzlhrY-E4',
    appId: '1:620067228024:web:4739dc75faf214f062a08d',
    messagingSenderId: '620067228024',
    projectId: 'flutter-final-exam2-fa273',
    authDomain: 'flutter-final-exam2-fa273.firebaseapp.com',
    storageBucket: 'flutter-final-exam2-fa273.appspot.com',
    measurementId: 'G-DMLBGECSGF',
  );
}
