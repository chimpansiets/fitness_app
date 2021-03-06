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
    apiKey: 'AIzaSyCUT5xqN9-Betu7oFrydfV05IgIEIpZ4OY',
    appId: '1:827246994784:web:432378b16440d3cd60aa05',
    messagingSenderId: '827246994784',
    projectId: 'fitnessapp-5dd98',
    authDomain: 'fitnessapp-5dd98.firebaseapp.com',
    storageBucket: 'fitnessapp-5dd98.appspot.com',
    measurementId: 'G-16Y903D51N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB53pZWiPPD29uIITT_9dwz36H5azPgXs',
    appId: '1:827246994784:android:71f5418edbf5aa4360aa05',
    messagingSenderId: '827246994784',
    projectId: 'fitnessapp-5dd98',
    storageBucket: 'fitnessapp-5dd98.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdLyyIqnWR-8qZIQuFAZL4bhW0iEV3CiQ',
    appId: '1:827246994784:ios:442a0550ea6c18e660aa05',
    messagingSenderId: '827246994784',
    projectId: 'fitnessapp-5dd98',
    storageBucket: 'fitnessapp-5dd98.appspot.com',
    iosClientId: '827246994784-kinp6lqm3aa1mmslc0f76htbrs0tn6rl.apps.googleusercontent.com',
    iosBundleId: 'com.example.fitnessApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdLyyIqnWR-8qZIQuFAZL4bhW0iEV3CiQ',
    appId: '1:827246994784:ios:442a0550ea6c18e660aa05',
    messagingSenderId: '827246994784',
    projectId: 'fitnessapp-5dd98',
    storageBucket: 'fitnessapp-5dd98.appspot.com',
    iosClientId: '827246994784-kinp6lqm3aa1mmslc0f76htbrs0tn6rl.apps.googleusercontent.com',
    iosBundleId: 'com.example.fitnessApp',
  );
}
