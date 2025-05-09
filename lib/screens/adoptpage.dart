import 'package:flutter/material.dart';

const Color primaryPurple = Color(0xFF5B488B);
const Color secondaryPurple = Color(0xFF827397);
const Color boyIndicator = Color(0xFF8EB1E5);
const Color girlIndicator = Color(0xFFF672E1);
const Color categoryIndicator = Color(0xFF594789);
const Color offcategoryIndicator = Color(0xFFFCFBFF);

class PetAdoptPage extends StatefulWidget {
  const PetAdoptPage({super.key});

  @override
  State<PetAdoptPage> createState() => _PetAdoptPageState();
}

class _PetAdoptPageState extends State<PetAdoptPage> {
  final categories = ['Cat', 'Dog', 'Fish', 'Bird'];
  String selectedCategory = 'Cat';

  final adoptPets = const [
    {'name': 'Ig', 'image': 'assets/images/cat3.jpeg', 'gender': 'Male'},
    {'name': 'Lorna', 'image': 'assets/images/cat1.jpg', 'gender': 'Male'},
    {'name': 'Max', 'image': 'assets/images/cat5.jpg', 'gender': 'Male'},
    {'name': 'Bella', 'image': 'assets/images/cat2.jpg', 'gender': 'Female'},
    {'name': 'Charlie', 'image': 'assets/images/cat4.jpg', 'gender': 'Male'},
  ];

  final suggestions = const [
    {'name': 'Blessing', 'image': 'assets/images/dog3.jpg', 'gender': 'Female'},
    {'name': 'Pumi', 'image': 'assets/images/fish2.jpg', 'gender': 'Female'},
    {'name': 'Christian', 'image': 'assets/images/dog4.jpg', 'gender': 'Female'},
  ];

  List<bool> likedPets = List.generate(5, (index) => false);
  List<bool> likedSuggestions = List.generate(3, (index) => false);

  void _toggleHeart(int index, String section) {
    setState(() {
      if (section == 'adopt') {
        likedPets[index] = !likedPets[index];
      } else if (section == 'suggestion1') {
        likedSuggestions[index] = !likedSuggestions[index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPetCategories(),
          const SizedBox(height: 30),
          _sectionHeader("Adopt pet", "See all"),
          const SizedBox(height: 20),
          _buildAdoptPetSection(),
          const SizedBox(height: 30),
          _sectionHeader("Suggestions", ""),
          const SizedBox(height: 20),
          _buildSuggestionsSection(suggestions, likedSuggestions, 'suggestion1'),
        ],
      ),
    );
  }

  // Widget _iconButton(IconData icon) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
  //     child: Container(
  //       padding: const EdgeInsets.all(8),
  //       decoration: BoxDecoration(
  //         color: const Color(0xFFF5F5F5),
  //         borderRadius: BorderRadius.circular(12),
  //       ),
  //       child: Icon(icon, color: Colors.black),
  //     ),
  //   );
  // }

  Widget _buildPetCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Pet Categories",
              style: TextStyle(fontWeight: FontWeight.w600, color: primaryPurple, fontSize: 18),
            ),
            Text(
              "More Category",
              style: TextStyle(fontWeight: FontWeight.w500, color: secondaryPurple, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: categories.map((category) {
            final isSelected = category == selectedCategory;
            return Expanded(
              child: GestureDetector(
                onTap: () => setState(() => selectedCategory = category),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? categoryIndicator : offcategoryIndicator,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.4),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    category,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _sectionHeader(String title, String action) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600, color: primaryPurple, fontSize: 18)),
        Text(action, style: TextStyle(fontWeight: FontWeight.w500, color: secondaryPurple, fontSize: 12)),
      ],
    );
  }

  Widget _buildAdoptPetSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: adoptPets.asMap().entries.map((entry) {
          int index = entry.key;
          var pet = entry.value;
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PetCard(
              name: pet['name']!,
              imagePath: pet['image']!,
              isLiked: likedPets[index],
              onHeartTap: () => _toggleHeart(index, 'adopt'),
              gender: pet['gender']!,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSuggestionsSection(List<Map<String, String>> list, List<bool> likes, String section) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list.asMap().entries.map((entry) {
          int index = entry.key;
          var pet = entry.value;
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PetCard(
              name: pet['name']!,
              imagePath: pet['image']!,
              isLiked: likes[index],
              onHeartTap: () => _toggleHeart(index, section),
              gender: pet['gender']!,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isLiked;
  final VoidCallback onHeartTap;
  final String gender;

  const PetCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.isLiked,
    required this.onHeartTap,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/adoptdetails'),
      child: Container(
        width: 220,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 6,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(imagePath, width: 220, height: 200, fit: BoxFit.cover),
                ),
                Positioned(
                  right: 12,
                  top: 12,
                  child: GestureDetector(
                    onTap: onHeartTap,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      gender == 'Female' ? Icons.female : Icons.male,
                      size: 20,
                      color: gender == 'Female' ? girlIndicator : boyIndicator,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
