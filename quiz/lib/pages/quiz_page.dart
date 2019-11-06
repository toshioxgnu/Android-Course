import 'package:flutter/material.dart';
import 'package:quiz/UI/answer_button.dart';
import 'package:quiz/utils/quiz.dart';
import 'package:quiz/UI/question_text.dart';

class QuizPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new QuizStatePage();
}

class QuizStatePage extends State<QuizPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new Column(
            children: <Widget>[
              new AnswerButton(true, () =>print("You tapped true")),
              new QuestionText( 'Pizza is Nice' , 1),
              new AnswerButton(false, () =>print("You tapped False")),
            ],
        ),
      ],
    );
  }

}