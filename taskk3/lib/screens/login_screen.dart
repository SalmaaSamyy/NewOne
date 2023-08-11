import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // bool? remember_me = false;
  // bool val;
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

        child: Column(
          children: <Widget>[
            Image.asset(
              'images/background2.png',
              height: MediaQuery.of(context).size.height * 0.178,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Expanded(
              /////////////************* */
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffedebeb),
                    borderRadius: BorderRadius.only(
                      ////////********* */
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: Padding(
                  // padding: EdgeInsets.all(30), /////********* */
                  padding: EdgeInsets.only(top: 20),

                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.021,
                        // width: MediaQuery.of(context).size.width,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        // width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 17),
                        // padding: EdgeInsets.symmetric(horizontal: 11),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: TextFormField(
                          //keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: ' Username',
                            hintStyle: TextStyle(
                              color: Color(0xff635b5b),
                              fontSize: 28,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 40,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),

                        // child: InputField() ,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.028,
                        // width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        // padding: EdgeInsets.symmetric(horizontal: 11),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: TextFormField(
                          cursorHeight: 30,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
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
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),

                        // child: InputField() ,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.42,
                          ),
                          Text(
                            'New to quizz app?',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
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
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2ab42e),
                          padding: EdgeInsets.fromLTRB(70, 20.8, 70, 20.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          elevation: 10,
                          shadowColor: Colors.black.withOpacity(1),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Icon(
                        Icons.fingerprint,
                        size: 65,
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),

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

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
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

        // Expanded(child:

        // )
      ),
    );
  }
}
