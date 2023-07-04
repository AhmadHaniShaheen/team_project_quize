import 'package:flutter/material.dart';
import 'package:team_flutter_project/pages/home.dart';
import 'package:team_flutter_project/pages/true_false_q_screen.dart';
import 'package:team_flutter_project/pages/multiple_q_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/true_false_q': (context) => const TrueFalseQuiz(),
        '/multiple_q': (context) => const MultiQScreen(),
      },
    );
  }
}
