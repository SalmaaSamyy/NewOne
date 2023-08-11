import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover)),

        // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            /// first widget
            ///

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            // if (MediaQuery.of(context).orientation == Orientation.portrait)
            Image.asset(
              'images/image2.png',
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            // if (MediaQuery.of(context).orientation == Orientation.landscape)
            //   Image.asset(
            //     "Images/quizLogo.png",
            //     height: MediaQuery.of(context).size.height * 0.3,
            //   ),

            /// second widget :

            Text(
              "ITI Quiz App",
              style: const TextStyle(
                // GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
                fontFamily: 'Bradley Hand ITC',
                // fontFamily: 'fonts/Pacifico.ttf',
                fontSize: 40,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              // style: GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
              style: const TextStyle(
                fontFamily: 'Brush Script MT',
                fontSize: 27,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),

            // SizedBox(
            //   height: 100,
            // ),
            Spacer(),

            // SizedBox(
            //   height: double.infinity,
            // ),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Start"))),

            // Container(
            //   margin: EdgeInsets.all(20), // المسافة بين الشيء ومحيطه الخارجي
            //   padding: EdgeInsets.all(40), // المسافة بين الشيء ومحيطه الداخلي
            //   height: 300,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       color: Colors.red,
            //       border: Border.all(width: 2, color: Colors.white)),
            //   child: Text(
            //       "dqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqwdqnqwkjnjklnqw"),
            // )
          ],
        ),
      ),
    );
  }
}
