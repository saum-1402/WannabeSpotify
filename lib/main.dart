import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:spotify/pages/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCT4jZWDkC1mwffkTgmpiqPKqOEbvifSIs',
        appId: '844a91d3d0d9ecf829c583',
        messagingSenderId: '1:248227314106:android:844a91d3d0d9ecf829c583',
        projectId: 'wannabespotify',
        storageBucket: 'wannabespotify.appspot.com',
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark
      ),
      // home: const HomeScreen(),
      home: const LoginPage(),
    );

  }
}

