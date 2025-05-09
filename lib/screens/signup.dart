import 'package:flutter/material.dart';

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
                onTap:() => Navigator.pushReplacementNamed(context, '/login'),
                child: SizedBox(
                  width: 195,
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 13,
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
          primary: false,
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
                      style: TextStyle(
                        color: Color(0xFF000000)
                      ),
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
                      style: TextStyle(
                        color: Color(0xFF000000)
                      ),
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
                      style: TextStyle(
                        color: Color(0xFF000000)
                      ),
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      alignment: Alignment.center,
                      width: 110,
                      child: Divider(),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      alignment: Alignment.center,
                      width: 130,
                      child: Text('or sign up with'),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      alignment: Alignment.center,
                      width: 110,
                      child: Divider(),
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
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
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
              ],
            ),
          )
        ],
      )
    );
  }
}
