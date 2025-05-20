import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [

          //------------------------------------User Story carousel
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
              },
            ),
          ),
          //------------------------------------User Story carousel

          SizedBox(height: 35),

          //------------------------------------User post box
          Container(
            margin: EdgeInsets.only(left: 35, right: 35),
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 5),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
            ),
            height: 400,
            child: UserPost(context),
          ),
          //------------------------------------User post box
        ],
      ),
    );
  }


  //------------------------------------User Story items
  final List<Map<String, dynamic>> story = [
    {'name': "Your Story", 'image': "assets/images/LeBron_James.jpg"},
    {'name': "Shh", 'image': "assets/images/Mark_Zuckerberg.jpg"},
    {'name': "Xtisla", 'image': "assets/images/Elon_Musk.jpg"},
    {'name': "Baron", 'image': "assets/images/jeff-bezos.jpg"},
    {'name': "Gart", 'image': "assets/images/ed-sheeran.jpg"},
    {'name': "Kurry", 'image': "assets/images/jayson_tatum.jpg"},
  ];
  //------------------------------------User Story items


  //------------------------------------User Story style
  Widget UserStory(String name, String ImageAsset, {bool isAddStory = false}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(image: AssetImage(ImageAsset), height: 50),
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
                    child: Icon(Icons.add, size: 12, color: Colors.white),
                  ),
                ),
            ],
          ),
          SizedBox(height: 4),
          Text(name, style: TextStyle(fontSize: 10, color: Colors.black)),
        ],
      ),
    );
  }
  //------------------------------------User Story style


  //------------------------------------User Posts Content
  Widget UserPost(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage("assets/images/LeBron_James.jpg"),
                  height: 50,
                ),
              ),

              Divider(indent: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abdul Jomar Sins",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Text("December 6, 2025", style: TextStyle(fontSize: 10)),
                ],
              ),

              Divider(indent: 10),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "2 mins ago",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ),

              IconButton(
                icon: Icon(Icons.more_vert_sharp),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return bottomMenuSheet();
                    },
                  );
                },
              ),
            ],
          ),
        ),
        
        SizedBox(height: 10),
        
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage("assets/images/dog-picture-2.jpg"),
            width: 274,
          ),
        ),

        SizedBox(height: 10),

        postActions(),
      ],
    );
  }
  //------------------------------------User Posts Content


  //------------------------------------Bottom Menu Sheet
  Widget bottomMenuSheet() {
    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          Container(
            width: 144,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(2),
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
  //------------------------------------Bottom Menu Sheet


  //------------------------------------Bottom Menu Sheet Items
  Widget menuItems(
    IconData icon,
    String item_label, {
    Color color = Colors.black,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(icon, color: color),
          SizedBox(width: 10),
          Text(item_label, style: TextStyle(fontSize: 15, color: color)),
        ],
      ),
    );
  }
  //------------------------------------Bottom Menu Sheet Items


  //------------------------------------User Posts Actions
  Widget postActions() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Icon(Icons.favorite_border),
          SizedBox(width: 10),
          Text("155", style: TextStyle(fontSize: 11)),
          SizedBox(width: 10),
          Icon(Icons.mode_comment_outlined),
          SizedBox(width: 10),
          Text("20", style: TextStyle(fontSize: 11)),
          SizedBox(width: 10),
          Icon(Icons.ios_share_outlined),
          SizedBox(width: 10),
          Text("20", style: TextStyle(fontSize: 11)),
        ],
      ),
    );
  }
  //------------------------------------User Posts Actions
}
