import 'package:flutter/material.dart';
import 'package:flutter_application_5/first_screen.dart';
import 'package:flutter_application_5/second_screen.dart';
import 'package:flutter_application_5/third_screen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => FirstScreen(),
        '/second':(context) => SecondScreen(),
        '/third':(context) => ThirdScreen(),
        
      },
    );
  }
}
