import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        primary: false,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image(
                    image: AssetImage('assets/images/bell.png')
                  ),
                ),
          
                Text(
                  "No notifications.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24
                  ),
                ),
          
                SizedBox(height: 15),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    "You have no notifications yet.\nPlease come back later.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 99, 57, 177),
                      fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}