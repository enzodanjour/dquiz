import 'package:dquiz/chalenge/challenge_controller.dart';
import 'package:dquiz/chalenge/next_button/next_button_widget.dart';
import 'package:dquiz/chalenge/question_indicator/question_indicator_widget.dart';
import 'package:dquiz/chalenge/quiz/quiz_widget.dart';
import 'package:dquiz/result/result_page.dart';
import 'package:dquiz/shared/models/question_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();
  @override
  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  void nextPage() {
    if (controller.currentPage < widget.questions.length)
      pageController.nextPage(
          duration: Duration(milliseconds: 100), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(126),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                ValueListenableBuilder<int>(
                  valueListenable: controller.currentPageNotifier,
                  builder: (context, value, _) => QuestionIndicatorWidget(
                    currentPage: controller.currentPage,
                    length: widget.questions.length,
                  ),
                )
              ],
            )),
      ),
      body: PageView(
          controller: pageController,
          children: widget.questions
              .map((e) => QuizWidget(onChange: nextPage, question: e))
              .toList()),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ValueListenableBuilder(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // if (value < widget.questions.length)
                        Expanded(
                            child: NextButtonWidget.white(
                                label: "Pular", onTap: nextPage)),
                        if (value == widget.questions.length)
                          Expanded(
                              child: NextButtonWidget.green(
                                  label: "Confirmar",
                                  onTap: () {
                                    Navigator.push(context,
                                        CupertinoPageRoute(builder: (context) => ResultPage()
                                      ));
                                  }))
                      ],
                    ))),
      ),
    );
  }
}
