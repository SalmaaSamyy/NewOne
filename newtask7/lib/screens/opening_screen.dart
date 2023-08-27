import 'package:flutter/material.dart';
import 'package:newtask7/screens/login_screen.dart';
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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Image.asset(
              'images/image2.png',
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            const Text(
              "ITI Quiz App",
              style: TextStyle(
                // GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
                fontFamily: 'Bradley Hand ITC',
                // fontFamily: 'fonts/Pacifico.ttf',
                fontSize: 40,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              "We are creative, enjoy our app",
              // style: GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
              style: TextStyle(
                fontFamily: 'Brush Script MT',
                fontSize: 27,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, fixedSize: const Size(320, 30)
                    // Background color
                    ),
                child: const Text(
                  'Start',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
