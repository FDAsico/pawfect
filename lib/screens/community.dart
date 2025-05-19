import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PAWFECT NAGA"
        ),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),

        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: story.length,
              itemBuilder: (context, index) {
                final item = story[index];
                final name = item['name'];
                final image = item['image'];
                final isAddStory = index == 0;
                return Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: UserStory(name, image, isAddStory: isAddStory),
                );
              }
            ),
          ),

          SizedBox(height: 35),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  offset: Offset(0, 5),
                  blurRadius: 3,
                  spreadRadius: 0,
                )
              ]
            ),
            width: 309,
            height: 394,

            child: Column( 
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage("images/LeBron_James.jpg"),
                        height: 50,
                      ),
                    ),

                    SizedBox(width: 10),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdul Jomar Sins",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                          ),
                        ),
                        Text(
                          "December 6, 2025",
                          style: TextStyle(
                            fontSize: 10
                          ),
                        )
                      ],
                    ),
                    
                    SizedBox(width: 10),

                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "2 mins ago",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    IconButton(
                      icon: Icon(Icons.more_vert_sharp),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return bottomMenuSheet();
                          }
                        );
                      },
                    )
                  ],
                ),

                SizedBox(height: 13),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage("images/dog-picture-2.jpg"),
                    height: 255,
                  ),
                ),

                SizedBox(height: 17),

                postActions(),
              ],
            ),
          )
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> story = [
    {'name': "Your Story", 'image': "images/LeBron_James.jpg"},
    {'name': "Shh", 'image': "images/Mark_Zuckerberg.jpg"},
    {'name': "Xtisla", 'image': "images/Elon_Musk.jpg"},
    {'name': "Baron", 'image': "images/jeff-bezos.jpg"},
    {'name': "Gart", 'image': "images/ed-sheeran.jpg"},
    {'name': "Kurry", 'image': "images/jayson_tatum.jpg"},
  ];

  Widget UserStory(String name, String ImageAsset, {bool isAddStory = false}){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(ImageAsset),
                  height: 50,
                ),
              ),

              if (isAddStory)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget postActions() {
    return Container(
      margin: EdgeInsets.only(left: 29),
      child: Row(
        children: [
          Icon(
            Icons.favorite_border
          ),
          SizedBox(width: 10),
          Text(
            "155",
            style: TextStyle(
              fontSize: 11
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.mode_comment_outlined
          ),
          SizedBox(width: 10),
          Text(
            "20",
            style: TextStyle(
              fontSize: 11
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.ios_share_outlined
          ),
          SizedBox(width: 10),
          Text(
            "20",
            style: TextStyle(
              fontSize: 11
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomMenuSheet() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            width: 144,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(2)
            ),
          ),

          SizedBox(height: 10),

          menuItems(Icons.star_border_outlined, "Add to favorites"),
          menuItems(Icons.person_remove_outlined, "Unfollow"),
          menuItems(Icons.link_rounded, "Copy link"),
          menuItems(Icons.notifications_none, "Notification"),
          menuItems(Icons.report_outlined, "Report", color: Colors.red),
        ],
      ),
    );
  }

  Widget menuItems(IconData icon, String item_label, {Color color = Colors.black}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(icon, color: color,),
          SizedBox(width: 10),
          Text(
            item_label,
            style: TextStyle(
              fontSize: 15,
              color: color
            ),
          )
        ],
      ),
    );
  }
}