import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/glopal.dart';
import 'package:newsapp/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
   const FirstScreen({Key? key}) : super(key: key);
// List list =["Heathy" , "technology" , "finance", "arts" , "sports", "finance", "arts" , "sports"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(




      backgroundColor: Colors.grey[150],
          /////////////////////////////////////////////////////////////////////////////////////////////////
          ///////////
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
            height: MediaQuery.of(context).size.height *90/800,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 50, start: 12, end: 12, bottom: 8),
                child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.28,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'discuse adidas',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons
                          .notification_add),
                    ),
                  )
                ],
              ),
            ),
          ),
        SizedBox(
          height: MediaQuery.of(context).size.height *61/800,
      
          child:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
      
              child: Row(
                children: [

                  
                  Text(
                    'Latest News',
                    style: GoogleFonts.tinos(color: Colors.black, fontSize: 20,
                      fontWeight: FontWeight.bold,) ,
                    // style:
                  // GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
                    // style: GoogleFonts.NewYorkSmall(),

                    // style: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 20,
                    //   fontWeight: FontWeight.bold,
                    //   fontFamily: "New York Small",
                    // ),
                  ),
                  
                  const Spacer(),
                  const Text(
                    'See all',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.keyboard_backspace,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height *240/800,
      
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  margin: const EdgeInsets.only(right: 3),
                  child: Image.asset('images/Frame 34.png',),
                );
              }),
            ),
          ),
        ),
      
        SizedBox(
          height: MediaQuery.of(context).size.height *48/800,
      
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i = 0 ; i< list1.length ; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text(list1[i],
                      style: const TextStyle(color: Colors.white),)),
                  ),
                ),

              ],
              // children: List.generate(20, (index) {
              //   return Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 11 ,vertical: 10),
              //     child: Container(
              //       decoration:BoxDecoration(
              //           color: Colors.red,
              //           borderRadius: BorderRadius.circular(20)
              //       ),
                    
              //       child: TextButton(
              //         onPressed: () {  },
              //         child:  Text('healthly',
              //           style: TextStyle(
              //               color: Colors.white
              //           ),),
              //       ),
              //     ),
              //   );
              // }),
            ),
          ),
        ),
      
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height *380/800,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.5),
                    child: Image.asset('images/Frame 33.png',
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      
          ],
        ),
      ),
      
          //////////////////////////////////////////////////////////////////
          ////////////////////////////////////////////////////////////////

      // body:
      //  SingleChildScrollView(
      //   child: Column(
          
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
            
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Row(
      //           children: [
      //             TextFormField(
      //               decoration: InputDecoration(
      //                 labelText: "Dogecoin to the Moon...",
      //                 // fillColor: Colors.black,
      //                 suffixIcon: Icon(Icons.search),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 300,
          height: 65,
          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.only(left: 27),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: const Column(
                  children: [
                    Icon(Icons.home_outlined,
                        size: 30, color: Color(0xffff4e57)),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 12, color: Color(0xffff4e57)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   // return const Secondscreen();
                  // },),);
                },
                child: const Column(
                  children: [
                    Icon(Icons.favorite_outline,
                        size: 30, color: Color(0xffa6a6a6)),
                    Text(
                      'Favorite',
                      style: TextStyle(fontSize: 12, color: Color(0xffa6a6a6)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   // return const ThirdtScreen();
                  // }));
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.person_3_outlined,
                      size: 30,
                      color: Color(0xffa6a6a6),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 12, color: Color(0xffa6a6a6)),
                    )
                  ],
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Secondscreen();
                  }));
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.navigate_next_rounded,
                      size: 30,
                      // weight:  ,
                      color: Color(0xffa6a6a6),
                    ),
                    Text(
                      'Next',
                      
                      style: TextStyle(fontSize: 12, color: Color(0xffa6a6a6),fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
