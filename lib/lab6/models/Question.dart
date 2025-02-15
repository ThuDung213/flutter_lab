class Question {
  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  // constructor: khai báo object
  Question({
   required this.questionText,
   required this.answers,
   required this.correctAnswerIndex,
  });
}