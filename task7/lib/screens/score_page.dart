import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taskk3/screens/category_screen.dart';
// import 'package:taskk3/screens/login_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int totalScore;
  final int totalQuestions;
  ScoreScreen(
      {super.key, required this.totalScore, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdfffda),
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
            Spacer(),
            Container(
              child: RichText(
                text: TextSpan(
                  text:
                      'Hello salma,\nyour grade is ${totalScore} / ${totalQuestions + 1}',
                  style: TextStyle(
                    color: Color(0xff7f0c8c),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(),
                    //const LoginScreen()
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

            Spacer(),
          ],
        ),
      ),
    );
  }
}
