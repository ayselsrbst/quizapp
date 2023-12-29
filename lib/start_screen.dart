import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 67, 97),
      appBar: AppBar(
        actions: const [Icon(Icons.access_alarm)],
        backgroundColor: const Color.fromARGB(255, 219, 38, 38),
        title: const Text(
          "Welcome",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Let's Go !",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 2, 2),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QuestionsScreen()),
                );
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(12),
                  backgroundColor: const Color.fromARGB(255, 204, 31, 31)),
            ),
          ],
        ),
      ),
    );
  }
}
