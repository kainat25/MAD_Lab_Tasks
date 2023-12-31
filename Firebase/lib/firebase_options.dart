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
    apiKey: 'AIzaSyBZVIfLzfwyEhgsvxKfLeDkgzR2Y4od9I4',
    appId: '1:99521524949:web:41151c36402f98b7eb1e5c',
    messagingSenderId: '99521524949',
    projectId: 'demoproject-b9512',
    authDomain: 'demoproject-b9512.firebaseapp.com',
    storageBucket: 'demoproject-b9512.appspot.com',
    measurementId: 'G-29M05YGR23',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4BWS1E6wr8COy2I29kdwGApY-RgsL8Gc',
    appId: '1:99521524949:android:a96ab27051c97b4deb1e5c',
    messagingSenderId: '99521524949',
    projectId: 'demoproject-b9512',
    storageBucket: 'demoproject-b9512.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXXRTLdNkD3mW6seFKqSGAzgumZou2fQM',
    appId: '1:99521524949:ios:30939d399314edb3eb1e5c',
    messagingSenderId: '99521524949',
    projectId: 'demoproject-b9512',
    storageBucket: 'demoproject-b9512.appspot.com',
    iosBundleId: 'com.example.demoprojectfb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXXRTLdNkD3mW6seFKqSGAzgumZou2fQM',
    appId: '1:99521524949:ios:a4e92b892b24ac8eeb1e5c',
    messagingSenderId: '99521524949',
    projectId: 'demoproject-b9512',
    storageBucket: 'demoproject-b9512.appspot.com',
    iosBundleId: 'com.example.demoprojectfb.RunnerTests',
  );
}
