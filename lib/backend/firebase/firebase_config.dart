import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDaFZxDbry6HXRuH8z00mbWfBkX6K5SLig",
            authDomain: "veri-feed-s82b5u.firebaseapp.com",
            projectId: "veri-feed-s82b5u",
            storageBucket: "veri-feed-s82b5u.firebasestorage.app",
            messagingSenderId: "34952363162",
            appId: "1:34952363162:web:49fe68b85919a178bdb323"));
  } else {
    await Firebase.initializeApp();
  }
}
