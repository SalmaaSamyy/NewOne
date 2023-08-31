import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/glopal.dart';
import 'package:newsapp/screens/third_screen.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *90/800,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 50, start: 15, end: 15, bottom: 8),              child: TextFormField(
                  
                  // style: ,
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.fromLTRB(10, 8, 8, 8) ,
                    hintText: 'COVID New Variant',
                    // fillColor: Colors.grey[200] ,
                    
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    suffixIcon: const Icon(
                      Icons.navigate_next_rounded,
                      size: 30,
                    ),
                    enabledBorder: 
                      OutlineInputBorder(                                    
                        borderRadius: BorderRadius.circular(33),
                      ),
                  ) ,
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
                          color:  Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(context: context,
                             builder: (BuildContext context){
                              return Container(
                                height: 400 ,
                                width:  MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  color: Color(0xffedebeb),
                                  borderRadius: BorderRadius.only(
                                    ////////********* */
                                    topLeft: Radius.circular(100),
                                    topRight: Radius.circular(100),
                                  )),
                                child: 
                                Padding(
                                  padding: const EdgeInsets.all(22.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Filter",
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                          ) ,),
                                      
                                          Spacer(),
                                           
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: TextButton(onPressed: (){
                                              // Navigator.push(context, 
                                              // MaterialPageRoute(builder: (context)=> ThirdtScreen()),
                                              // );
                                            },
                                            
                                             child: 
                                             
                                            Row(
                                              children: [
                                                Icon(  Icons.delete_outline,
                                                color: Colors.black,
                                                ) ,
                                                                                //         Spacer(),
                                                Text("Reset" ,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                
                                                
                                                )
                                                
                                              ],
                                            ),
                                            
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),


                                      Container(
                                        // padding: 30,
                                        height: 170,
                                        
                                        child: GridView.extent(
                                          // crossAxisCount: 3,
                                          // crossAxisSpacing: 5,
                                          // mainAxisSpacing: 5,
                                          maxCrossAxisExtent: 200,
                                          children: [
                                            
                                            for(int j =0 ; j<list2.length ;j++)
                                            Container(
                                              // height: 0,
                                              // width: 5,
                                              margin: EdgeInsets.symmetric(horizontal: 7 , vertical: 5),
                                              // padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 2),
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  borderRadius: BorderRadius.circular(40),
                                              ),

                                              child: TextButton(onPressed: (){},                                            
                                              child:                                              
                                                Text(list2[j] ,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                ),                                            
                                                  ),    
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),

                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                                        width: double.infinity,
                                        child: ElevatedButton(onPressed: (){
                                          Navigator.push(context, 
                                            MaterialPageRoute(builder: (context)=> ThirdtScreen()),
                                          );
                                        },                                        
                                        
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red ,
                                          ),
                                          child: Text("Save" ,
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,                                          
                                              color: Colors.black,
                                            ),
                                         
                                         ),
                                         
                                         ),
                                      )




                                    ],
                                  ),
                                ),
                                
                                
                                /*Center(
                                  child: ElevatedButton(
                                    onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("close")),
                                ),*/
                              
                              );
                             },
                            );

                            },
                          child: Text(list1[i],
                          style: TextStyle(color: Colors.white),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Text("About 11,130,000 results for COVID New Variant."),

            Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height *700/800,
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

      
    );
  }
}