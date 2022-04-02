import 'package:flutter/material.dart';
import 'package:nema/screens/loginScreen.dart';
import 'package:nema/screens/welcomScreen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow[700],
      ),
      home: WelcomScreen(),
    );
  }
}
