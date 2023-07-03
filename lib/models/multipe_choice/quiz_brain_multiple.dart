import 'package:team_flutter_project/models/multipe_choice/question_multiple.dart';

class QuizBrainMulti {
  int _questionNumber = 0;

  final List<QuestionMultiple> _questionBank = [
    QuestionMultiple('You can lead a cow down stairs but not up stairs.', 1,
        ['always', 'never', 'sometimes']),
    QuestionMultiple(
        'Approximately one quarter of human bones are in the feet.',
        0,
        ['agree', 'disagree', 'not sure']),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  int getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  List<String> getOptions() {
    return _questionBank[_questionNumber].options;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
