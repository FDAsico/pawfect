import 'package:flutter/material.dart';
import 'categories.dart';
import 'package:carousel_slider/carousel_slider.dart';

class petStore extends StatelessWidget {
  petStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pet Store",
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

          //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//
          CarouselSlider(
            options: CarouselOptions(
              height: 124,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.8
            ),
            items: [1,2].map((e) {
              return Container(
                width: 325,
                padding: EdgeInsets.only(left: 20, top: 10),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(8)
                ),
              
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                        
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pumi",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white
                          ),
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                            
                            Text(
                              "Naga City (100m)",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          child: Text("Adopt"),
                        )
                      ],
                    ),

                    SizedBox(width: 70),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: AssetImage("images/dog-picture-2.jpg"),
                        height: 95,
                      ),
                    ),
                  ],
                )
              );
            }).toList(),
          ),
          //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//

          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text(
                  "Shopping Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
            
                Spacer(),
            
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => categories())
                      );
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          //-------------------------------------------CAROUSEL CHOICES-----------------------------------------//
          Container(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: carouselItems.length,
              itemBuilder: (context, index) {
                final item = carouselItems[index];
                final name = item['name'];
                final image = item['image'];
                final color = getCategoryColor(name);
                return Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: choices(name, image, color),
                );
              }
            ),
          ),
          //-------------------------------------------CAROUSEL CHOICES-----------------------------------------//

          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
            
                Spacer(),
            
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  width: 146,
                  height: 198,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(33),
                    child: Image.asset(
                      'assets/images/pedigree-dog-food.jpg',
                      width: 110,
                      height: 166,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            
                Spacer(),
            
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  width: 146,
                  height: 198,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(33),
                    child: Image.asset(
                      'assets/images/canin-cat-food.jpg',
                      width: 110,
                      height: 166,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> carouselItems = [
    {'name': "Cats", 'image': "assets/images/cat-picture.jpg"},
    {'name': "Dogs", 'image': "assets/images/dog-picture.jpg"},
    {'name': "Birds", 'image': "assets/images/bird-picture.jpg"},
    {'name': "Rabbits", 'image': "assets/images/rabbit-picture.jpg"},
    {'name': "Fishes", 'image': "assets/images/fish-picture.jpg"},
    {'name': "Turtles", 'image': "assets/images/turtle-picture.jpg"},
  ];

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
          width: 114,
          height: 164,
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
              SizedBox(height: 10),
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