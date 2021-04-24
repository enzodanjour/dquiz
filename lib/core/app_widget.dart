
import 'package:dquiz/chalenge/chalenge_page.dart';
import 'package:dquiz/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      debugShowCheckedModeBanner: false,
      home: ChalengePage(),
    );
  }
}
