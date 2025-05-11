import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),

        children: [

          //-------------------------------------------SEARCH BAR-----------------------------------------//
          Center(
            child: Column(
              children: [
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
              ],
            ),
          ),
          //-------------------------------------------SEARCH BAR-----------------------------------------//
          

          SizedBox(height: 20),

          GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            // mainAxisSpacing: 52,  ------------- may default spacing kaya sako, kaya tig comment ko lng muna
            // crossAxisSpacing: 36, ------------- un-comment na lng if may problems sa layout
            children: [
              choices("Cats", "assets/images/cat-picture.jpg", getCategoryColor("Cats")),
              choices("Dogs", "assets/images/dog-picture.jpg", getCategoryColor("Dogs")),
              choices("Birds", "assets/images/bird-picture.jpg", getCategoryColor("Birds")),
              choices("Rabbits", "assets/images/rabbit-picture.jpg", getCategoryColor("Rabbits")),
              choices("Fishes", "assets/images/fish-picture.jpg", getCategoryColor("Fishes")),
              choices("Turtles", "assets/images/turtle-picture.jpg", getCategoryColor("Turtles")),
            ],
          ),
        ],
      ),
    );
  }

  getCategoryColor(String name) {
    switch (name.toLowerCase()) {
      case 'cats':
        return Color(0xFFF18487);
      case 'dogs':
        return Color(0xFFA0A2DA);
      case 'birds':
        return Color(0xFFEF9E1B);
      case 'rabbits':
        return Color(0xFFB89B55);
      case 'fishes':
        return Color(0xFF71C174);
      case 'turtles':
        return Color(0xFFEB6D34);
    }
  }

  Widget choices(String name, String imageAsset, Color bgColor) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1)
          ),
          width: 134,
          height: 139,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(imageAsset),
                  width: 91,
                  height: 93,
                ),
              ),
              SizedBox(height: 5),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                  height: 0.9
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}