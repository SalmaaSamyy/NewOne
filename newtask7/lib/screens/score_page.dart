import 'package:flutter/material.dart';
import 'package:newtask7/Global/quizz_data.dart';
import 'package:newtask7/screens/opening_screen.dart';
// import 'package:taskk3/screens/login_screen.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalQuestions;
  const ScoreScreen(
      {super.key, required this.totalScore, required this.totalQuestions});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfffda),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.17,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   width: 1800,
            // ),
            const Spacer(),
            RichText(
              text: TextSpan(
                text:
                    'Hello ${usernamecontroll.text} ,\nyour grade is ${widget.totalScore} / ${widget.totalQuestions + 1}',
                style: const TextStyle(
                  color: Color(0xff7f0c8c),
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
    
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OpeningScreen(),
                    //CategoryScreen(),
                    
                  ),
                );
              },
              child: const Text(
                "Play Again",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    
            const Spacer(),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    
    usernamecontroll.clear();
  }
}
