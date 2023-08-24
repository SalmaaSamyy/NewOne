import 'package:flutter/material.dart';
// import 'package:taskk3/screens/category_screen.dart';
// import 'package:taskk3/screens/login_screen.dart';
import 'package:taskk3/screens/opening_screen.dart';
// import 'package:taskk3/screens/quiz_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OpeningScreen(),

      //  CategoryScreen(),

      // QuizScreen(),
      //  const LoginScreen(),
      // const OpeningScreen(),
    );
  }
}
