import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 24),
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
                          borderRadius: BorderRadius.circular(8)),
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "PEOPLE",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    chats("Mark Zuckerberg", "You sent a message", "Now", "",
                        "assets/images/Mark_Zuckerberg.jpg"),
                    chats("Elon Musk", "Par!!", "Today, 5:30pm", "seen",
                        "assets/images/Elon_Musk.jpg"),
                    chats("Jeff Bezos", "NOTED par..", "Today, 2:10pm", "seen",
                        "assets/images/jeff-bezos.jpg"),
                    chats("Ed Sheeran", "Ed sheeran sent a photo",
                        "Today, 12:10pm", "3", "assets/images/ed-sheeran.jpg"),
                    chats("Jayson Tatum", "You sent a message", "Today, 9:14am",
                        "", "assets/images/jayson_tatum.jpg"),
                    chats("LeBron James", "Thanks!", "Yesterday, 8:10am",
                        "seen", "assets/images/LeBron_James.jpg"),
                    chats("Ed Sheeran", "Ed sheeran sent a photo",
                        "Today, 12:10pm", "3", "assets/images/ed-sheeran.jpg")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chats(String name, String message, String time, String status,
      String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
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
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text(
                message,
                style: GoogleFonts.inter(
                  color: Color(0x80000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 11
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              status == "3" && name == "Ed Sheeran" //????
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
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0x80000000),
                      ),
                    )
            ],
          )
        ],
      ),
    );
  }
}
