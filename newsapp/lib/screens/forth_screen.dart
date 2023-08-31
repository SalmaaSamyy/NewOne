


import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Hot Updates",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 345 / 375,
                height: MediaQuery.of(context).size.height * 128 / 812,
                child: Image.asset(
                  "images/Frame.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Monday, 10 May 2021",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(177, 5, 5, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
      
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "WHO classifies triple-mutant Covid variant from India as global health risk",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: RichText(
                    text: const TextSpan(
                        text:
                        "A World Health Organization official said Monday it is\n reclassifying the highly contagious triple-mutant Covid\n variant spreading in India as a “variant of concern,”\n indicating that it’s become a...",
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 15
      
                        ),
                        children: [
                          TextSpan(
                              text: "Read More", style: TextStyle(color: Colors.blue))
                        ])),
              ),
            ),
      
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Published by Berkeley Lovelace Jr.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 345 / 375,
                height: MediaQuery.of(context).size.height * 128 / 812,
                child: Image.asset(
                  "images/fourth.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
      
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Sunday, 9 May 2021",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(177, 5, 5, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "What to do if you're planning or attending a wedding during\n the pandemic",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: double.infinity,
                child: RichText(
                  text: const TextSpan(
                    text:
                    "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... .",
                    style: TextStyle(
                        color: Colors.black,
                      fontSize: 17
                    ),
                    children: [
                      TextSpan(
                          text: "Read More", style: TextStyle(color: Colors.blue))
                    ]
                  ),
                ),
              ),
            ),
            // Spacer(),

            SizedBox(
              height: 40,
            ),
      
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Published by Kristen Rogers.",
                  style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),
                ),
              ),
            ),
      
      
          ],
        ),
      ),



    );
  }
}