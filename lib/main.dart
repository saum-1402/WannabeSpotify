import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/login.dart';

void main() {
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
        brightness: Brightness.dark
      ),
      // home: const HomeScreen(),
      home: const LoginPage(),
    );

  }
}

