import 'package:flutter/material.dart';
import 'question_model.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Quiz is completed, handle the end of the quiz
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Quiz Completed"),
            content: Text("You have completed the quiz!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    currentQuestionIndex = 0;
                  });
                },
                child: Text("Restart"),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(question.imagePath, height: 200),
            SizedBox(height: 20),
            ...question.options.map((option) => ElevatedButton(
              onPressed: () {
                // Handle option selection
              },
              child: Text(option),
            )),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Question ${currentQuestionIndex + 1}/${questions.length}'),
                ElevatedButton(
                  onPressed: nextQuestion,
                  child: Text('Next'),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: (currentQuestionIndex + 1) / questions.length,
            ),
          ],
        ),
      ),
    );
  }
}
