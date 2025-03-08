import 'package:flutter/material.dart';
import 'package:pawfect/screens/reset/forgot.dart';
import 'package:pawfect/screens/signup/signup.dart';
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
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Text(
                'PAWFECT NAGA',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 36,
                  color: Color.fromARGB(255, 91, 72, 139),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 25.0),
              child: Text(
                'Log in',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 30.0),
              child: Text(
                "Hi! Welcome back you've been missed",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
              child: SizedBox(
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
              child: SizedBox(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password',
                  ),
                ),
              )
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Forgot(),
                )
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 25.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 3, 57)
                  ),
                )
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 25.0),
              width: 351.0,
              height: 58.0,
              child: SizedBox(
                child: FilledButton(
                  onPressed: () => debugPrint('Log in Button Pressed!'), 
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
                      builder: (context) => SignUp(),
                    )
                  ),
                  child: SizedBox(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 21, 3, 57),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}

