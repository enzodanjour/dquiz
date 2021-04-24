import 'package:dquiz/chalenge/next_button/next_button.dart';
import 'package:dquiz/chalenge/question_indicator/question_indicator_widget.dart';
import 'package:dquiz/chalenge/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChalengePage extends StatefulWidget {
  ChalengePage({Key? key}) : super(key: key);

  @override
  _ChalengePageState createState() => _ChalengePageState();
}

class _ChalengePageState extends State<ChalengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(title: "O que o flutter faz em sua totalidade"),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: NextButtonWidget.white(label: "Fácil")),
              SizedBox(width: 7),
              Expanded(child: NextButtonWidget.green(label: "Confirmar"))
            ],
          ),
        ),
      ),
    );
  }
}
