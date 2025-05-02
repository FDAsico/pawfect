import 'package:flutter/material.dart';

class PetDetailsPage extends StatefulWidget {
  @override
  _PetDetailsPageState createState() => _PetDetailsPageState();
}

class _PetDetailsPageState extends State<PetDetailsPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Pet image
          SizedBox(
            height: screenHeight * 0.6,
            width: double.infinity,
            child: Image.asset('assets/cat1.jpg', fit: BoxFit.cover),
          ),

          // Back button
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                ),
                child: Icon(Icons.arrow_back, color: Colors.deepPurple),
              ),
            ),
          ),

          // Info container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.48,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name, gender, favorite
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Ig", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(width: 6),
                          Icon(Icons.male, color: Colors.blue),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () => setState(() => isFavorite = !isFavorite),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  // Location
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.purple, size: 16),
                      SizedBox(width: 4),
                      Text("Naga City (500m)", style: TextStyle(fontSize: 15, color: Colors.purple)),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Pet info cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      infoCard("Male", "Sex"),
                      infoCard("Orange", "Color"),
                      infoCard("Persian", "Breed"),
                      infoCard("2kg", "Weight"),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Owner info
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/cat1.jpg"),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Owner by:", style: TextStyle(fontSize: 14, color: Colors.grey)),
                          Text("Abdul Jomar Sins", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 162, 110, 172),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.chat_bubble_outline, color: Colors.white),
                      ),
                    ],
                  ),

                  //  Adopt button
                  Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 12),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.25, vertical: 12),
                        ),
                        child: Text("Adopt Me", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoCard(String value, String label) {
    return Container(
      width: 70,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
