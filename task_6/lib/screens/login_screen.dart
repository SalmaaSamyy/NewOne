import 'package:flutter/material.dart';
import 'package:taskk3/screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  // bool? remember_me = false;
  // bool v al;
  final _formKey = GlobalKey<FormState>();
  // final _formKey2 = GlobalKey<FormState>();
  // final _formKey3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 30),
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.035),

        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device

        decoration: BoxDecoration(color: Color(0xff19721c)),

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
                  decoration: BoxDecoration(
                      color: Color(0xffedebeb),
                      borderRadius: BorderRadius.only(
                        ////////********* */
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Padding(
                    // padding: EdgeInsets.all(30), /////********* */
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03), //20

                    child: Column(
                      children: <Widget>[
                        // Padding(
                        //     padding: EdgeInsets.only(
                        //   bottom: 20,
                        // )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                          // width: MediaQuery.of(context).size.width,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.004,
                          // width: MediaQuery.of(context).size.width,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.04,
                            vertical:
                                MediaQuery.of(context).size.height * 0.003,
                          ),

                          // padding: EdgeInsets.symmetric(horizontal: 11),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: TextFormField(
                            //keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                size: 40,
                              ),
                              hintText: ' Username',
                              hintStyle: TextStyle(
                                color: Color(0xff635b5b),
                                fontSize: 28,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: MediaQuery.of(context).size.height *
                                      0.0035,
                                ),
                                borderRadius: BorderRadius.circular(27),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "UserName mustn't be empty";
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

                        //////////////
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
                            validator: (value) {
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
                                      MediaQuery.of(context).size.width * 0.035,
                                  vertical: MediaQuery.of(context).size.height *
                                      0.023),
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(
                                color: Color(0xff635b5b),
                                fontSize: 28,
                              ),
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 40,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: MediaQuery.of(context).size.height *
                                      0.0035,
                                ),
                                borderRadius: BorderRadius.circular(33),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 0.001,
                        //   // width: MediaQuery.of(context).size.width,
                        // ),

                        Container(
                          // key: _formKey2,
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
                                      MediaQuery.of(context).size.width * 0.035,
                                  vertical: MediaQuery.of(context).size.height *
                                      0.023),
                              hintText: ' password',
                              hintStyle: TextStyle(
                                color: Color(0xff635b5b),
                                fontSize: 28,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 40,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: MediaQuery.of(context).size.height *
                                      0.0035,
                                ),
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
                              width: MediaQuery.of(context).size.width * 0.38,
                            ),
                            Text(
                              'New to quizz app?',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            TextButton(
                              child: Text(
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
                                      CategoryScreen(),
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
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff2ab42e),
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.16,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.027,
                            ), //.fromLTRB(70, 20.8, 70, 20.8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            elevation: 10,
                            shadowColor: Colors.black.withOpacity(1),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Icon(
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
                        Spacer(),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.032)),

                            Icon(
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
                            Text(
                              ' Remember me',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),

                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 0.1,
                            // ),
                            Spacer(),
                            TextButton(
                              child: Text(
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
    );
  }
}
