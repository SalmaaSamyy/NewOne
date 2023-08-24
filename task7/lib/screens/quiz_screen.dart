// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:taskk3/Global/quizz_data.dart';
import 'package:taskk3/screens/score_page.dart';

class QuizScreen extends StatefulWidget {
  // QuizScreen({super.key});
  // final String? quizzName;
  // final Color? quizzColor; //
  //  List quizzList;
  final Map category_container;
  const QuizScreen(
      {super.key,
      // required this.quizzColor,
      // required this.quizzName /*, required this.quizzList*/
      required this.category_container});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  // int i = 0;
  int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // "General Test",
          // "${dataBase[index]}",
          // "${quizzName}",
          // "${}"
          // dataBase[i]["categoryName"],
          (widget.category_container["categoryName"]),
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
            // "1/10",
            // "${index + 1}/${widget.dataList[i].length}",
            "${index + 1}/ ${(widget.category_container["data"] as List).length}",

            style: TextStyle(
              fontSize: 20,
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
        // backgroundColor: Colors.greenAccent[400],
        backgroundColor: widget.category_container["color"],

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
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Text(
                widget.category_container["data"][index]["question"],
                // "In which country was the last World Cup held?",
                style: TextStyle(fontSize: 25, color: Color(0xff464444)),
              ),
            ),
            for (int i = 0;
                i <
                    (widget.category_container["data"][index]["answers"]
                            as List)
                        .length;
                i++)
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.015),
                height: MediaQuery.of(context).size.height * 0.12,
                //  100,
                width: MediaQuery.of(context).size.width * 0.8,
                // 300,
                child: ElevatedButton(
                  child: Text(
                    // "Egypt",
                    widget.category_container["data"][index]["answers"][i]
                        ["ans"],

                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    // primary: Color(0xff779755),
                    primary: widget.category_container["color"],
                  ),
                  onPressed: () {
                    totalScore += widget.category_container["data"][index]
                        ["answers"][i]["score"] as int;
                    if (index + 1 <
                        (widget.category_container["data"] as List).length) {
                      setState(() {
                        index++;
                      });
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                            totalScore: totalScore,
                            totalQuestions: index++,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
