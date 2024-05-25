import 'package:flutter/material.dart';
import 'package:quiz_app/quize_screen.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo ,
        useMaterial3: false,
      ),
      home: QuizScreen(),
    );
  }
}
