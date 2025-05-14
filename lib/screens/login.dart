import 'package:flutter/material.dart';
import 'package:pawfect/screens/signup.dart';
/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-5] Login Screen
Description: Login screen for users who have accounts
*/
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,

      // ),
      body: ListView(
        primary: false,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsetsDirectional.only(top: 35.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Image.asset(
                    isDarkMode ? 'assets/images/paw-dark.png' : 'assets/images/paw.png',
                    height: 134,
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'PAWFECT NAGA',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                  child: Text(
                    "Hi! Welcome back you've been missed",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  child: SizedBox(
                    child: TextField(
                      obscureText: false,
                      style: TextStyle(
                        color: Color(0xFF000000)
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  child: SizedBox(
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Color(0xFF000000)
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/forgot'),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 25.0),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: isDarkMode ? Color(0xFFe6e0e9) : Color.fromARGB(255, 21, 3, 57),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
                  width: 351.0,
                  height: 58.0,
                  child: SizedBox(
                    child: FilledButton(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )
                        )
                      ),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      width: 110,
                      child: Divider(
                        color: Color.fromARGB(255, 91, 72, 139),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      width: 130,
                      child: Text('or continue with'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      width: 110,
                      child: Divider(
                        color: Color.fromARGB(255, 91, 72, 139),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      //width: 110,
                      child: GestureDetector(
                        onTap:() => debugPrint('Facebook login Tapped!'),
                        child: Image.asset(
                          'assets/images/facebook-circle-fill.png',
                          height: 40,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      width: 130,
                      child: GestureDetector(
                        onTap: () => debugPrint('Google login Tapped!'),
                        child: Image.asset(
                          'assets/images/google 3.png',
                          height: 35,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
                      //width: 110,
                      child: GestureDetector(
                        onTap: () => debugPrint('Apple login Tapped!'),
                        child: Image.asset(
                          'assets/images/apple-fill.png',
                          height: 35,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      child: Text("Don't have an account? ")
                    ),
                    GestureDetector(
                      onTap:() => Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => SignUp(initShow: 1),
                        )
                      ),
                      child: SizedBox(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: isDarkMode ? Color(0xFFe6e0e9) : Color.fromARGB(255, 21, 3, 57),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ],
            ),
          )
        ]
      )
    );
  }
}

