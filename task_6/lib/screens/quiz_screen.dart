import 'dart:html';

import 'package:flutter/material.dart';
import 'package:taskk3/screens/score_page.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Test",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Satoshi', //'Bradley Hand ITC',
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Text(
            "1/10",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1, //60.2,
        // toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        elevation: 10.00,
        backgroundColor: Colors.greenAccent[400],
        actions: [
          Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.027,
              right: MediaQuery.of(context).size.width * 0.03,
            ),
            // width: 30,

            child: Image.asset(
              'images/background2.png',
              // height: 30,
              // scale: 0.1,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Question 1",
              style: TextStyle(fontSize: 35, color: Color(0xffa50eb5)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "In which country was the last World Cup held?",
              style: TextStyle(fontSize: 30, color: Color(0xff464444)),
            ),
            const SizedBox(
              height: 40,
              //  MediaQuery.of(context).size.height * 0.1,
              //  40,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              //  100,
              width: MediaQuery.of(context).size.width * 0.8,
              // 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff779755),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Egypt",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 100,
              // width: 300,
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff779755),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Qatar",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.8,
              // height: 100,
              // width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff779755),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "Abu Dhabi",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.8,
              // height: 100,
              // width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff779755),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScoreScreen()),
                    );
                  },
                  child: const Text(
                    "saudi",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
