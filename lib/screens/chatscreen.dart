import 'package:flutter/material.dart';

class Messaging_Page extends StatefulWidget {
  const Messaging_Page({super.key});

  @override
  State<Messaging_Page> createState() => _Messaging_PageState();
}

class _Messaging_PageState extends State<Messaging_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
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

                //-------------------------------------------SEARCH BAR-----------------------------------------//
                SizedBox(
                  width: 325,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
                      ),
                      isDense: true,
                    ),
                  ),
                ),
                //-------------------------------------------SEARCH BAR-----------------------------------------//

                SizedBox(height: 10),

                Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "PEOPLE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),

                    chats("Mark Zuckerberg", "You sent a message", "Now", "", "images/Mark_Zuckerberg.jpg"),
                    chats("Elon Musk", "Par!!", "Today, 5:30pm", "seen", "images/Elon_Musk.jpg"),
                    chats("Jeff Bezos", "NOTED par..", "Today, 2:10pm", "seen", "images/jeff-bezos.jpg"),
                    chats("Ed Sheeran", "Ed sheeran sent a photo", "Today, 12:10pm", "3", "images/ed-sheeran.jpg"),
                    chats("Jayson Tatum", "You sent a message", "Today, 9:14am", "", "images/jayson_tatum.jpg"),
                    chats("LeBron James", "Thanks!", "Yesterday, 8:10am", "seen", "images/Lebron_James.jpg"),
                    chats("Ed Sheeran", "Ed sheeran sent a photo", "Today, 12:10pm", "3", "images/ed-sheeran.jpg")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chats(String name, String message, String time, String status, String imagePath){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 4),
              status == "3" && name == "Ed Sheeran"
              ? Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              : Text(
                status,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey.shade500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}