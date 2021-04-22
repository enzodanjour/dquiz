import 'package:dquiz/shared/models/question_models.dart';

enum Level{ facil, medio, dificil, perito}


class QuizModel {
  final String title;
  final List<QuestionModel> question;
  final int questionAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title, 
    required this.question,
    required this.questionAnswered,
    required this.image,
    required this.level,
  });
}
