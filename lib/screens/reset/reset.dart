import 'package:flutter/material.dart';

/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-15] Reset Password Screen
Description: Reset Password Screen for those users who click the link in their email
*/

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: ListView(
          primary: false,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Lilly 2.png'
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 36,
                      color: Color.fromARGB(255, 91, 72, 139),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                  child: Text(
                    "Set your new password",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
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
                        hintText: 'Enter your new password',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 0.0),
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
                        hintText: '***********',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 144, 160, 183),
                        ),
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 45.0, 20.0, 25.0),
                  width: 351.0,
                  height: 58.0,
                  child: SizedBox(
                    child: FilledButton(
                      onPressed: () => debugPrint('Reset Button Pressed!'), 
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )
                        )
                      ),
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
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
