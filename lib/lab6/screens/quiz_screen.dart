import 'package:flutter/material.dart';
import 'package:micard/lab6/providers/quiz_provider.dart';
import 'package:micard/lab6/widgets/answer_button.dart';
import 'package:provider/provider.dart';

// QuizScreen Widget
class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // get quiz state
    final quizProvider = Provider.of<QuizProvider>(context);

    if (quizProvider.currentIndex >= quizProvider.questions.length) {
      return Scaffold(
        appBar: AppBar(title: const Text("Quiz Completed!")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Final Score: ${quizProvider.score}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () => quizProvider.resetQuiz(), child: const Text("Restart quiz"))
            ],
          ),
        ),
      );
    }

    final question = quizProvider.questions[quizProvider.currentIndex];

    // main structure
    return Scaffold(
      appBar: AppBar(title: Text("Quizzler")),
      // Assign elements vertically
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // show question
            Text(
              question.questionText,
              style: TextStyle(fontSize: 24),
            ),

            // quiz options
            // asMap(): convert list to map (key:index, value)
            ...question.answers.asMap().entries.map((entry) {
              int idx = entry.key;
              String answer = entry.value;
              return ElevatedButton (
                  onPressed: () => quizProvider.answerQuestion(entry.key),
                  child: Text(answer)
              );
            }).toList(),
            SizedBox(height: 20),

            //   Show feedback message
            if(quizProvider.feedback.isNotEmpty)
              Container (
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: quizProvider.feedback == "Correct!" ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  quizProvider.feedback,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),

            SizedBox(height: 20),

            Text(
              'Score: ${quizProvider.score}',
              style: TextStyle(fontSize: 20),
            )

          ],
        ),
      )
    );
  }
}