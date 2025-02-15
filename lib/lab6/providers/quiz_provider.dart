import 'package:flutter/material.dart';
import 'package:micard/lab6/models/Question.dart';

//ChangeNotifier: notifies listeners (widgets) when its state changes
class QuizProvider extends ChangeNotifier {
  final List<Question> _questions = [
    Question(
        questionText: "What is my nickname",
        answers: ["Junjun", "Dung", "hihi", "haha"],
        correctAnswerIndex: 0),
    Question(
        questionText: "What is my favourite movie?",
        answers: ["My Neighbor Totoro", "From Up on Poppy Hill", "The Wind Rises", "Whisper of the Heart"],
        correctAnswerIndex: 2),
    Question(
        questionText: "What is my favourite book?",
        answers: ["Harry Potter", "Sherlock Holmes", "Quân khu Nam Đồng", "Số Đỏ"],
        correctAnswerIndex: 2),
  ];

  int _currentIndex = 0;
  int _score = 0;
  String _feedback = '';

  // getter: cho phép access value (read-only)
  List<Question> get questions => _questions;
  int get currentIndex => _currentIndex;
  int get score => _score;
  String get feedback => _feedback;


  void answerQuestion(int selectedIndex) {
    if (selectedIndex == _questions[currentIndex].correctAnswerIndex) {
      _score++;
      _feedback = 'Correct!';
    } else {
      _feedback = 'Wrong! The correct anwser is: ${_questions[currentIndex].correctAnswerIndex}';
    }

    notifyListeners();

    Future.delayed(const Duration(seconds: 2), () {
      if(_currentIndex < _questions.length - 1 ) {
        _currentIndex++;
        _feedback = "";
      } else {
        _feedback = "Quiz Completed!";
      }
      notifyListeners();
    });
  }

  void resetQuiz() {
    _currentIndex = 0;
    _score = 0;
    _feedback = "";
    notifyListeners();
  }
}