import 'package:flutter/material.dart';

/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-6] Signup Screen
Description: Signup screen for users who do not have an account
*/

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
          Container(
            alignment: Alignment.center,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
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
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                child: Text(
                  "Create a new account to join our buddy community",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
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
