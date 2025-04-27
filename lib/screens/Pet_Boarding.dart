import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

/* 
Authored by: Albert Gian Ocfemia
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-22] Pet boarding screen
Description: pet boarding screen for those who are looking for someone to take care of their pets
*/

class PetBoarding extends StatefulWidget {
  const PetBoarding({super.key});

  @override
  State<PetBoarding> createState() => _PetBoardingState();
}

class _PetBoardingState extends State<PetBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pet Boarding",
          style: TextStyle(fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(8)
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

                //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.8
                  ),
                  items: [
                    Container( //-------------------------------------------1st header card
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                              
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 150),
                            child: Text(
                              "We'll treat your pet like family",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white
                              ),
                            ),
                          ),
                              
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              )
                            ),
                            child: Text("Book Now"),
                          )
                        ],
                      )
                    ),

                    Container( //-------------------------------------------2nd header card
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                              
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 150),
                            child: Text(
                              "We'll treat your pet like family",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white
                              ),
                            ),
                          ),
                              
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              )
                            ),
                            child: Text("Book Now"),
                          )
                        ],
                      )
                    ),
                  ],
                ),
                //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//
                
                SizedBox(height: 35),

                //-------------------------------------------CARETAKER NUMBER 1-----------------------------------------//
                Container(
                  width: 344,
                  height: 162,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),

                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('assets/images/Francis-Dave-Asico.png')
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Francis Dave Asico",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Colors.black
                                ),
                              ),

                              SizedBox(width: 10),
                              Icon(
                                Icons.verified_user_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),

                          SizedBox(height: 15),
                          Text(
                            "₱500 / day",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                            ),
                          ),

                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              ),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              minimumSize: Size(100, 50)
                            ),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),

                      
                    ],
                  ),
                ),
                //-------------------------------------------CARETAKER NUMBER 1-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 2-----------------------------------------//
                Container(
                  width: 344,
                  height: 162,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),

                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('assets/images/Albert-Gian-Ocfemia.png')
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Albert Gian Ocfemia",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Colors.black
                                ),
                              ),

                              SizedBox(width: 10),
                              Icon(
                                Icons.verified_user_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),

                          SizedBox(height: 15),
                          Text(
                            "₱1000 / hour",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                            ),
                          ),

                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              ),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              minimumSize: Size(100, 50)
                            ),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),

                      
                    ],
                  ),
                ),
                //-------------------------------------------CARETAKER NUMBER 2-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 3-----------------------------------------//
                Container(
                  width: 344,
                  height: 162,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),

                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('assets/images/Christian-Paul-Malto.png')
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Christian Paul Malto",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Colors.black
                                ),
                              ),

                              SizedBox(width: 10),
                              Icon(
                                Icons.verified_user_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),

                          SizedBox(height: 15),
                          Text(
                            "₱500 / day",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                            ),
                          ),

                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              ),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              minimumSize: Size(100, 50)
                            ),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),

                      
                    ],
                  ),
                ),
                //-------------------------------------------CARETAKER NUMBER 3-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 4-----------------------------------------//
                Container(
                  width: 344,
                  height: 162,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                        spreadRadius: 0,
                      )
                    ]
                  ),

                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('assets/images/Christian-Baldemoro.png')
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Christian Baldemoro",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Colors.black
                                ),
                              ),

                              SizedBox(width: 10),
                              Icon(
                                Icons.verified_user_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),

                          SizedBox(height: 15),
                          Text(
                            "₱500 / day",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                            ),
                          ),

                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              ),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              minimumSize: Size(100, 50)
                            ),
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),

                      
                    ],
                  ),
                )
                //-------------------------------------------CARETAKER NUMBER 4-----------------------------------------//
              ],
            ),
          ),
        ],
      ),
    );
  }
}