import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryPurple = Color(0xFF5B488B);
class PetGroomingScreen extends StatelessWidget {
  const PetGroomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Grooming'),
        centerTitle: true,
      ),
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFD8D8D8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 1),
                    decoration: BoxDecoration(
                      color: primaryPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Promo Banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: primaryPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          '60% OFF',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                         Text(
                          'On hair & Spa treatment',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/dog2.png',
                      width: 115,
                      height: 89,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Our Services title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  'Our Services',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: primaryPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: primaryPurple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Services Grid
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 3 / 3.5,
              children: [
                serviceCard('Bath & Drying', 'assets/images/bath.png'),
                serviceCard('Hair Trimming', 'assets/images/hair.png'),
                serviceCard('Nail Cleaning', 'assets/images/nail.png'),
                serviceCard('Ear Cleaning', 'assets/images/ear.png'),
                serviceCard('Teeth Brushing', 'assets/images/brush.png'),
                serviceCard('Flea Treatment', 'assets/images/flea.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget serviceCard(String title, String imagePath) {
    return Container(
      width: 138,
      height: 134,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(7)),
            child: Image.asset(
              imagePath,
              width: 138,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 2),
          Expanded(
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF5B488B),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
