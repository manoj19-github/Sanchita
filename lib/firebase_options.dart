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
    apiKey: 'AIzaSyBo-a1hlZ0fKmGrm6SAm6EJ51kO9JHZJHE',
    appId: '1:32930767547:web:9d6bc7db4856b68bd17f9e',
    messagingSenderId: '32930767547',
    projectId: 'flutterfirebase-7bdd6',
    authDomain: 'flutterfirebase-7bdd6.firebaseapp.com',
    storageBucket: 'flutterfirebase-7bdd6.appspot.com',
    measurementId: 'G-84W4C6EWXH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNdpgWrNHtiCT0mWtW7dc3dSfqc7Ve7fw',
    appId: '1:32930767547:android:a0e2ee38e85501d2d17f9e',
    messagingSenderId: '32930767547',
    projectId: 'flutterfirebase-7bdd6',
    storageBucket: 'flutterfirebase-7bdd6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-E3p2p8WkzibnIVQ-cMtv9PEdyq7clmk',
    appId: '1:32930767547:ios:f39c874ec0bce46ed17f9e',
    messagingSenderId: '32930767547',
    projectId: 'flutterfirebase-7bdd6',
    storageBucket: 'flutterfirebase-7bdd6.appspot.com',
    iosClientId: '32930767547-h6l1o2j8l4qt8jt0sgpq4mve18mrk6as.apps.googleusercontent.com',
    iosBundleId: 'com.example.sanchita',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-E3p2p8WkzibnIVQ-cMtv9PEdyq7clmk',
    appId: '1:32930767547:ios:f39c874ec0bce46ed17f9e',
    messagingSenderId: '32930767547',
    projectId: 'flutterfirebase-7bdd6',
    storageBucket: 'flutterfirebase-7bdd6.appspot.com',
    iosClientId: '32930767547-h6l1o2j8l4qt8jt0sgpq4mve18mrk6as.apps.googleusercontent.com',
    iosBundleId: 'com.example.sanchita',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBo-a1hlZ0fKmGrm6SAm6EJ51kO9JHZJHE',
    appId: '1:32930767547:web:d939fe24e5cb113fd17f9e',
    messagingSenderId: '32930767547',
    projectId: 'flutterfirebase-7bdd6',
    authDomain: 'flutterfirebase-7bdd6.firebaseapp.com',
    storageBucket: 'flutterfirebase-7bdd6.appspot.com',
    measurementId: 'G-4VWLSX8WKN',
  );
}
