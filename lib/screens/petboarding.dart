import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                //-------------------------------------------SEARCH BAR-----------------------------------------//
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
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

                SizedBox(height: 15),

                //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//
                CarouselSlider(
                  options: CarouselOptions(
                      height: 124,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      viewportFraction: 1
                  ),
                  items: [
                    Carousel(description: 'We\'ll treat your pet like family', buttonText: 'Book Now'),
                    Carousel(description: 'Join our animal community', buttonText: 'Join Now'),
                    Carousel(description: 'Pumi', buttonText: 'Adopt'),
                  ],
                ),
                //-------------------------------------------CAROUSEL HEADER CARD-----------------------------------------//

                SizedBox(height: 15),

                //-------------------------------------------CARETAKER NUMBER 1-----------------------------------------//

                BoardingCard(
                    name: 'Francis Dave Asico',
                    image: 'assets/images/Francis-Dave-Asico.png',
                    rate: 500),

                //-------------------------------------------CARETAKER NUMBER 1-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 2-----------------------------------------//
                BoardingCard(
                    name: 'Albert Gian Ocfemia',
                    image: 'assets/images/Albert-Gian-Ocfemia.png',
                    rate: 500),

                //-------------------------------------------CARETAKER NUMBER 2-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 3-----------------------------------------//
                BoardingCard(
                    name: 'Christian Paul Malto',
                    image: 'assets/images/Christian-Paul-Malto.png',
                    rate: 500),

                //-------------------------------------------CARETAKER NUMBER 3-----------------------------------------//

                SizedBox(height: 10),

                //-------------------------------------------CARETAKER NUMBER 4-----------------------------------------//

                BoardingCard(
                    name: 'Christian Baldemoro',
                    image: 'assets/images/Christian-Baldemoro.png',
                    rate: 500),
                //-------------------------------------------CARETAKER NUMBER 4-----------------------------------------//
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoardingCard extends StatelessWidget {
  final String name;
  final String image;
  final double rate;
  const BoardingCard(
      {super.key, required this.name, required this.image, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      margin: EdgeInsets.symmetric(horizontal: 15),
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
          ]),
      child: Row(
        children: [
          Container(
            height: 128,
            margin: EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage(image)),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.verified_user_outlined,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Text(
                "₱$rate / day",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                child: Text(
                  "Book Now",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final String description;
  final String buttonText;
  const Carousel({super.key, required this.description, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage('assets/images/bg-carousel.png'),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 159),
              child: Text(
                description,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 30,
              width: 110,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  buttonText,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
