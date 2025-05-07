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

                    //------------------------------------------- PERSON 1 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/Mark_Zuckerberg.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mark Zuckerberg",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "You sent a message",
                                  style: TextStyle(
                                    color: Colors.grey.shade600
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            )
                          ),
                          Text(
                            "New",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600
                            ),
                          ),
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 1 -----------------------------------------//

                    //------------------------------------------- PERSON 2 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/Elon_Musk.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Elon Musk",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Par!!",
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
                                "Today, 5:38pm",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "seen",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade500
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 2 -----------------------------------------//

                    //------------------------------------------- PERSON 3 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/jeff-bezos.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jeff Bezos",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Noted Par..",
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
                                "Today, 2:10pm",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "seen",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade500
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 3 -----------------------------------------//

                    //------------------------------------------- PERSON 4 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/ed-sheeran.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ed Sheeran",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Ed Sheeran sent a photo",
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
                                "Today, 12:10pm",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle
                                ),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 4 -----------------------------------------//

                    //------------------------------------------- PERSON 5 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/jayson_tatum.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jayson Tatum",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "You sent a message",
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
                                "Today, 9:14am",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 25),
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 5 -----------------------------------------//

                    //------------------------------------------- PERSON 6 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/LeBron_James.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lebron James",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Thanks!",
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
                                "Yesterday, 8:10pm",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "seen",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade500
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 6 -----------------------------------------//

                    //------------------------------------------- PERSON 7 -----------------------------------------//
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/ed-sheeran.jpg'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ed Sheeran",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Ed Sheeran sent a photo",
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
                                "Today, 12:10pm",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle
                                ),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------------------------------- PERSON 7 -----------------------------------------//
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}