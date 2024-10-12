import 'package:quiz/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsList = [
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', answer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', answer: true),
    Question(questionText: 'A slug\'s blood is green.', answer: true),
  ];

  String getQuestionText() {
    return _questionsList[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsList[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionsList.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
