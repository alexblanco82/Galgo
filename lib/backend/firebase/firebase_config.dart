import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAVn2oSTCAyGXNQLFIKLpLVTiyuIssPvKA",
            authDomain: "gal-go-c07a8.firebaseapp.com",
            projectId: "gal-go-c07a8",
            storageBucket: "gal-go-c07a8.appspot.com",
            messagingSenderId: "361826657895",
            appId: "1:361826657895:web:16bae031b8b813668a16c2",
            measurementId: "G-KG4ZPK3LTT"));
  } else {
    await Firebase.initializeApp();
  }
}
