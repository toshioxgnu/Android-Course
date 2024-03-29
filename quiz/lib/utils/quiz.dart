import 'package:quiz/utils/question.dart';

class Quiz{
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions, this._currentQuestionIndex, this._score){
    _questions.shuffle();
  }

  int get score => _score;

  int get currentQuestionIndex => _currentQuestionIndex;

  List<Question> get questions => _questions;

  int get length => _questions.length;

  Question get nextQuestion {
    _currentQuestionIndex++;
    if (_currentQuestionIndex >= length) return null;
    return _questions[_currentQuestionIndex];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;

  }

}
