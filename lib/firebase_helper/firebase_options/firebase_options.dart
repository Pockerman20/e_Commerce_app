import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:610006652992:ios:0007446549f41e41e9e7a5',
        apiKey: 'AIzaSyCx5GUHvTpXf-IoQwkk7noKBERsr0V1T4s',
        projectId: 'e-commerce-2ca56',
        messagingSenderId: '610006652992',
        iosBundleId: 'com.example.youtubeEcommerce',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:610006652992:android:8b16df046d6b5d8de9e7a5',
        apiKey: 'AIzaSyD7QvmtTxgQ3jWDO-xrog7JWSF5rcdNOQ4',
        projectId: 'e-commerce-2ca56',
        messagingSenderId: '610006652992',
      );
    }
  }
}
