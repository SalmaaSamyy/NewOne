
import 'package:flutter/material.dart';
import 'package:newsapp/screens/forth_screen.dart';

class ThirdtScreen extends StatelessWidget {
  const ThirdtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
                        child: SizedBox(
              height: MediaQuery.of(context).size.height * 400 / 812,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "images/page3.png",
                fit: BoxFit.cover,
              ),

            ),

          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 120, 10, 5),
            height:
            MediaQuery.of(context).size.height * 438 / 812, // width: 50,
            width: double.infinity,

            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

            child: const Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  Text(
                      "LONDON — Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be\n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said."),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        "Digital currencies like bitcoin, ether and even dogecoin\n have been on a tear this year, reminding some\n investors of the 2017 crypto bubble in which bitcoin\n blasted toward 20,000, only to sink as low as 3,122\n a year later."),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                        " Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said: “They\n have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value"),
                  ),
                ],
                )
              )
              ,
            ),
          ),

          Center(
              child: Container(
                
                width: MediaQuery.of(context).size.width * 290 / 375,
                height: MediaQuery.of(context).size.height * 141 / 812,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 226, 226).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Sunday, 9 May 2021\n',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            children: [
                              TextSpan(
                                text:
                                'Crypto investors should be\n prepared to lose all their\n money, BOE governor says\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'Published by Ryan Browne',
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          )
          
        ],


      ),



      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.only(end: 20, bottom: 20),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Set the border radius
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthScreen()),
            );
          },
          child: Image.asset("images/Vector.png")
        ),
      ),
    );
  }
}