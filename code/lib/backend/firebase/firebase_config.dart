import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBtT8L9eViJVdSW77BIiaWtj9Rn8XwTk5w",
            authDomain: "hydra-smart-2tpmqj.firebaseapp.com",
            projectId: "hydra-smart-2tpmqj",
            storageBucket: "hydra-smart-2tpmqj.appspot.com",
            messagingSenderId: "1000549122933",
            appId: "1:1000549122933:web:28d18bec9827523b11093c"));
  } else {
    await Firebase.initializeApp();
  }
}
