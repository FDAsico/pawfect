import 'package:flutter/material.dart';

class the_notification extends StatelessWidget {
  const the_notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),

        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image(
                    image: AssetImage('images/bell.png')
                  ),
                ),
          
                Text(
                  "No notifications.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
          
                SizedBox(height: 15),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    "You have no notifications yet. Please come back later.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 99, 57, 177),
                      fontSize: 20
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