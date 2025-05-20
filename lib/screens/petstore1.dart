import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pet Store',
      debugShowCheckedModeBanner: false,
      home: CatShopPage(),
    );
  }
}

class CatShopPage extends StatefulWidget {
  const CatShopPage({super.key});

  @override
  State<CatShopPage> createState() => _CatShopPageState();
}

class _CatShopPageState extends State<CatShopPage> {
  final List<String> filters = ['All', 'Food', 'Toys', 'Hygiene'];
  String selectedFilter = 'All';

  final List<Map<String, dynamic>> products = [
    {'name': 'Soft Bed', 'price': 199, 'image': 'assets/images/bed.png'},
    {'name': 'Cat Balls', 'price': 50, 'image': 'assets/images/balls.png'},
    {'name': 'Treats', 'price': 299, 'image': 'assets/images/temp.png'},
    {'name': 'Toothbrush', 'price': 109, 'image': 'assets/images/cat1.png'},
  ];

  final Color primaryColor = const Color(0xFF5B488B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 10),
            _buildFilterChips(),
            const SizedBox(height: 10),
            _buildProductGrid(),
          ],
        ),
      ),
    );
  }

  // AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: primaryColor),
        onPressed: () {},
      ),
      title: Text('Cat', style: TextStyle(color: primaryColor)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: primaryColor),
          onPressed: () {},
        ),
      ],
    );
  }

  // Search Bar
  Widget _buildSearchBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  // Filter Chips
  Widget _buildFilterChips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: filters.map((filter) {
        final isSelected = filter == selectedFilter;

        return InkWell(
          onTap: () => setState(() => selectedFilter = filter),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected ? primaryColor : Colors.grey[200],
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              filter,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  // Product Grid
  Widget _buildProductGrid() {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 270,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            name: product['name'],
            price: product['price'],
            imagePath: product['image'],
            primaryColor: primaryColor,
          );
        },
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatefulWidget {
  final String name;
  final int price;
  final String imagePath;
  final Color primaryColor;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.primaryColor,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: widget.primaryColor.withOpacity(0.3)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heart and for image
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  widget.imagePath,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () => setState(() => isFavorited = !isFavorited),
                  child: Icon(
                    isFavorited ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          // product name
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          // product price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '₱${widget.price}',
              style: TextStyle(
                color: widget.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
