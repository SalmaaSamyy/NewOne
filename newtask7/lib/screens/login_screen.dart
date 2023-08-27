import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newtask7/Global/quizz_data.dart';
import 'package:newtask7/screens/category_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // bool? remember_me = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        onWillPop: () async {   
        // Call the platform-specific method to exit the app
          await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        // return false ;
        // Navigator.pushReplacement(context, )
          throw showDialog(
            context: context, 
            builder: (context)=> AlertDialog(
            title: const Text("Are you sure you want to exit?"),
            actions: <Widget>[
                ElevatedButton(
                  child:const Text('No'),
                  onPressed: () =>  Navigator.of(context, ),
                ),
                TextButton(
                  child: const Text('Yes'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ],
          ),
          
          );
          // return false ; ////????
       },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.symmetric(vertical: 30),
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.035),
    
            width: MediaQuery.of(context).size.width, // the width of the device
            height: MediaQuery.of(context).size.height * 1, // hight of the device
    
            decoration:const BoxDecoration(color: Color(0xff19721c)),
    
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/background2.png',
                    height: MediaQuery.of(context).size.height * 0.173,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Expanded(
                    /////////////************* */
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xffedebeb),
                          borderRadius: BorderRadius.only(
                            ////////********* */
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                      child: Padding(
                        
                        // padding: EdgeInsets.all(30), /////********* */
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.014), //20
    
                        child: Column(
                          children: <Widget>[
                            // Padding(
                            //     padding: EdgeInsets.only(
                            //   bottom: 20,
                            // )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                              // width: MediaQuery.of(context).size.width,
                            ),
                            const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.006,
                              // width: MediaQuery.of(context).size.width,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.04,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.001,
                              ),
    
                              // padding: EdgeInsets.symmetric(horizontal: 11),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                              ),
    
                              child: TextFormField(
                                controller: usernamecontroll ,

                                //keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                      MediaQuery.of(context).size.width *0.03,
                                      vertical:
                                         MediaQuery.of(context).size.height *0.01
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    size: 40,
                                  ),
                                  hintText: ' Username',
                                  hintStyle: const TextStyle(
                                    color: Color(0xff635b5b),
                                    fontSize: 25,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: MediaQuery.of(context).size.height *
                                          0.001,
                                    ),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return  "UserName mustn't be empty";
                                  }
                                  if (value.length < 8) {
                                    return "UserName is short ";
                                  }
                                  if (!value[0].contains(RegExp(r'[A-Z]'))) {
                                    return "userName must start with upperCase";
                                  }
                                },
                              ),
    
                              // child: InputField() ,
                            ),


                            const SizedBox(
                              height: 15,
                            ),
                            ///
                            Container(
                              // key: _formKey3,
                              // key: _formKey,
    
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.035),
    
                              // padding: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
    
                              child: TextFormField(
                                cursorHeight: 30,
                                validator: ( value) {
                                  if (value!.isEmpty) {
                                    return "please enter your email";
                                  }
                                  if (!RegExp(
                                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                      .hasMatch(value)) {
                                    // return null;
                                    return 'Email is not valid';
    
                                    // , it must contain upper & lower letters ,special characters , nums ';
                                  }
                                  // else {
                                  //   return 'Email is not valid';
                                  // }
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  hintText: 'Enter your Email',
                                  hintStyle: const TextStyle(
                                    color: Color(0xff635b5b),
                                    fontSize: 25,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.mail,
                                    size: 40,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    // borderSide: BorderSide(
                                    //   width: MediaQuery.of(context).size.height *
                                    //       0.003,
                                    // ),
                                    borderRadius: BorderRadius.circular(33),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
    
                            Container(
                              // key: _formKey2,
                              // key: _formKey,
    
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.035),
    
                              // padding: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
    
                              child: TextFormField(
                                cursorHeight: 30,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "UserName mustn't be empty";
                                  }
                                  if (value.length < 9) {
                                    return "Password is short ";
                                  }
                                  if (!value.contains(
                                    RegExp(
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),
                                  )) {
                                    return 'Enter valid password ';
                                    // , it must contain upper & lower letters ,special characters , nums ';
                                  }
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  hintText: ' password',
                                  hintStyle: const TextStyle(
                                    color: Color(0xff635b5b),
                                    fontSize: 28,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    size: 40,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.visibility_off,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    // borderSide: BorderSide(
                                    //   width: MediaQuery.of(context).size.height *
                                    //       0.003,
                                    // ),
                                    borderRadius: BorderRadius.circular(33),
                                  ),
                                ),
                              ),
                            ),
                            //
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.015,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                ),
                                const Text(
                                  'New to quizz app?',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.005,
                                ),
                                TextButton(
                                  child: const Text(
                                    "Register",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // _formKey3.currentState!.validate() &&
                                  // _formKey2.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const CategoryScreen(),
                                    ),
                                  );
                                }
                                // if (_formKey2.currentState!.validate()) {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute<void>(
                                //       builder: (BuildContext context) =>
                                //           CategoryScreen(),
                                //     ),
                                //   );
                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2ab42e),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.16,
                                  vertical:
                                      MediaQuery.of(context).size.height * 0.016,
                                ), //.fromLTRB(70, 20.8, 70, 20.8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                elevation: 10,
                                shadowColor: Colors.black.withOpacity(1),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Icon(
                              Icons.fingerprint,
                              size: 55,
                              color: Color(0xff166ab0),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              'Use Touch ID',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * 0.03,
                            // ),
                           /* const*/ const Spacer(),
                            Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                0.032)),
    
                                const Icon(
                                  Icons.check_box,
                                  color: Color(0xff2a842d),
                                ),
    
                                // Checkbox(
                                //     value: remember_me,
                                //     activeColor: Color(0xff29872c),
                                //     tristate: true,
                                //     onChanged: (newBool) {
                                //       // setstate((){
                                //       remember_me = newBool;
                                //       // });
                                //     }),
                                const Text(
                                  ' Remember me',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
    
                                // SizedBox(
                                //   width: MediaQuery.of(context).size.width * 0.1,
                                // ),
                                const Spacer(),
                                TextButton(
                                  child: const Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) /*,
                  Text(
                    "login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  )*/
                ],
              ),
            ),
    
            // Expanded(child:
    
            // )
          ),
        ),
      ),
    );
  }
}
