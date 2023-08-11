import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/background.jpg'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/image2.png'),
                    )),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Container(
                    child: const Text(
                      'ITI Quiz app',
                      style: const TextStyle(
                        fontFamily: 'Bradley Hand ITC',
                        // fontFamily: 'fonts/Pacifico.ttf',
                        fontSize: 40,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: const Text(
                      'We Are Creative, enjoy our App',
                      style: const TextStyle(
                        fontFamily: 'Brush Script MT',
                        fontSize: 27,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                decoration: new BoxDecoration(
                  // borderRadius: new BorderRadius.circular(6.0),
                  color: Colors.transparent,
                ),
                width: 290,
                height: 40,
                child: BottomAppBar(
                  // padding: EdgeInsets.only(left: 15),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      primary: Color(0xff27bf2c),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        // backgroundColor: Colors.transparent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      print('starting...');
                    },
                  ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

          */
