import 'package:dquiz/shared/models/answer_model.dart';

class QuestionModel {
 

  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers
    }): assert(
      answers.length == 4
  );//assert tem de se travar a quantidade de itens
}
