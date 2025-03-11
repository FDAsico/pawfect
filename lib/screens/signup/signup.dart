import 'package:flutter/material.dart';
import 'package:pawfect/screens/login/login.dart';

/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-6] Signup Screen
Description: Signup screen for users who do not have an account
*/

class SignUp extends StatelessWidget {
  final dynamic initShow;

  const SignUp( {super.key, @required this.initShow});
  
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            if (initShow == 0 || initShow == null) ...[
              GestureDetector(
                onTap:() => Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  )
                ),
                child: SizedBox(
                  width: 195,
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 15,
                      color: isDarkMode ? Color(0xFFe6e0e9) : Color.fromARGB(255, 21, 3, 57),
                      //decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ]
          ],
        ),
        body: ListView(
          children: [
            if( initShow == 0 || initShow == null) ...{
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  isDarkMode ? 'assets/images/paw-dark.png' : 'assets/images/paw.png',
                  height: 134,
                ),
              )
            },
            Container(
              alignment: Alignment.center,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if( initShow == 0 || initShow == null) ...{
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      'PAWFECT NAGA',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                },
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
                  child: Text(
                    'Sign Up',
                    style: initShow == 0 || initShow == null ? TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ) : 
                    Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                  child: Text(
                    "Create a new account to join our buddy community",
                    textAlign: TextAlign.center,
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
                    'Name',
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Phone Number',
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your Phone Number',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Re-type Password',
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF1F1F1),
                        border: OutlineInputBorder(),
                        hintText: '***************',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
                  width: 351.0,
                  height: 58.0,
                  child: SizedBox(
                    child: FilledButton(
                      onPressed: () => debugPrint('Sign Up Button Pressed!'), 
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )
                        )
                      ),
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  )
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 110,
                      child: Divider(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 130,
                      child: Text('or sign up with'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 110,
                      child: Divider(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
