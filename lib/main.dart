import 'package:flutter/material.dart';
import 'package:odlly/pages/homeScreen.dart';
import 'package:odlly/pages/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'odLly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("odLly"),
        // ),
          body: const WelcomeScreen()),
    );
  }
}


