// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBJ0IfWBhEVXfiagdKaeRTHlCNnbMYHnoQ',
    appId: '1:477525148582:web:486c2331e822e706078567',
    messagingSenderId: '477525148582',
    projectId: 'taskapp-5c0f7',
    authDomain: 'taskapp-5c0f7.firebaseapp.com',
    storageBucket: 'taskapp-5c0f7.appspot.com',
    measurementId: 'G-V10995GCLL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYg3E4_m2ck_trJjwrBoVEXEJn-waI34s',
    appId: '1:477525148582:android:79fc12c1594469a8078567',
    messagingSenderId: '477525148582',
    projectId: 'taskapp-5c0f7',
    storageBucket: 'taskapp-5c0f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0P5xxI-bJC0uXK7g_E0IDSFXyrNxqE8c',
    appId: '1:477525148582:ios:8b2ed7dbc3a5026e078567',
    messagingSenderId: '477525148582',
    projectId: 'taskapp-5c0f7',
    storageBucket: 'taskapp-5c0f7.appspot.com',
    iosBundleId: 'com.example.taskapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0P5xxI-bJC0uXK7g_E0IDSFXyrNxqE8c',
    appId: '1:477525148582:ios:5356dad2ff9b2a8d078567',
    messagingSenderId: '477525148582',
    projectId: 'taskapp-5c0f7',
    storageBucket: 'taskapp-5c0f7.appspot.com',
    iosBundleId: 'com.example.taskapp.RunnerTests',
  );
}
