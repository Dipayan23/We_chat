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
    apiKey: 'AIzaSyD6k_DsKzsUQW57vnYriJvjZpyViBdH-N0',
    appId: '1:596520105382:web:cfa90d7be0a07a5f010b67',
    messagingSenderId: '596520105382',
    projectId: 'we-chat-8f184',
    authDomain: 'we-chat-8f184.firebaseapp.com',
    storageBucket: 'we-chat-8f184.appspot.com',
    measurementId: 'G-5PRYD88WS6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7AGLmD9SYYsyG4WIVU9TEqFuNzjn8Ry0',
    appId: '1:596520105382:android:693b6848d737798e010b67',
    messagingSenderId: '596520105382',
    projectId: 'we-chat-8f184',
    storageBucket: 'we-chat-8f184.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIB6is0po_pVIqOXZWSk5iUQdrNrdmSYY',
    appId: '1:596520105382:ios:f23f2495eec8c32f010b67',
    messagingSenderId: '596520105382',
    projectId: 'we-chat-8f184',
    storageBucket: 'we-chat-8f184.appspot.com',
    iosClientId: '596520105382-illpoi4uf7ud9nj6kfbakriuf9f8gs9j.apps.googleusercontent.com',
    iosBundleId: 'com.example.weChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIB6is0po_pVIqOXZWSk5iUQdrNrdmSYY',
    appId: '1:596520105382:ios:95b922470b1467a2010b67',
    messagingSenderId: '596520105382',
    projectId: 'we-chat-8f184',
    storageBucket: 'we-chat-8f184.appspot.com',
    iosClientId: '596520105382-g09ptq865fo05ieablfkrtaevjetjmlm.apps.googleusercontent.com',
    iosBundleId: 'com.example.weChat.RunnerTests',
  );
}
