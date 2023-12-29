import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback onRestartQuiz;

  const ResultScreen({super.key, required this.onRestartQuiz});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 67, 97),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz is finished !",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartScreen(() {})),
                  );
                },
                child: const Text("HomePage"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
