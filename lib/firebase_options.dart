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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA3dwMz4Xx0zE60CiadXFnry3gGZYgJzPQ',
    appId: '1:757088422705:web:5eb1b7d63032dd822efe10',
    messagingSenderId: '757088422705',
    projectId: 'todoapp-af873',
    authDomain: 'todoapp-af873.firebaseapp.com',
    storageBucket: 'todoapp-af873.appspot.com',
    measurementId: 'G-V9LDMGDLTL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfWGNhvVDMkmI4gdyZ029qABY9Uz16Jqc',
    appId: '1:757088422705:android:6e4c9f10a06c692d2efe10',
    messagingSenderId: '757088422705',
    projectId: 'todoapp-af873',
    storageBucket: 'todoapp-af873.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNsSBMqq0jXqAsFOb9SD8tkPjIwDtIIgE',
    appId: '1:757088422705:ios:2f6e57708a6881cd2efe10',
    messagingSenderId: '757088422705',
    projectId: 'todoapp-af873',
    storageBucket: 'todoapp-af873.appspot.com',
    iosBundleId: 'com.example.archi',
  );
}
