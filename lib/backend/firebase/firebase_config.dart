import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDuBUUALEjpq14R65t_KSjIntBZ_gMv7nI",
            authDomain: "uni-fest.firebaseapp.com",
            projectId: "uni-fest",
            storageBucket: "uni-fest.appspot.com",
            messagingSenderId: "32866304723",
            appId: "1:32866304723:web:3a4e4c47ddfacb29634a26",
            measurementId: "G-H47BDLP1E7"));
  } else {
    await Firebase.initializeApp();
  }
}
