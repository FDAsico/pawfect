import 'package:flutter/material.dart';

const Color primaryPurple = Color(0xFF5B488B);

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;
  double userRating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/bed.png',
              width: double.infinity,
              height: 400,
              // fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Pet Sleeping Bed Cat Bed Dog House Semi-closed Cat Accessories Foldable Detachable Cat Nest',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ...List.generate(5, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  userRating = index + 1.0;
                                });
                              },
                              child: Icon(
                                index < userRating
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.amber,
                                size: 15,
                              ),
                            );
                          }),
                          const SizedBox(width: 8),
                          Text(
                            '$userRating',
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (quantity > 1) quantity--;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: primaryPurple,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(Icons.remove,
                                  color: Colors.white, size: 16),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('$quantity',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: primaryPurple,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(Icons.add,
                                  color: Colors.white, size: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          TextSpan(
                            text: 'PHP 199 - 299  ',
                            style: TextStyle(
                              color: primaryPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: 'PHP 699 - 1,299  ',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: '-75%',
                            style: TextStyle(color: primaryPurple),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Product Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.only(bottom: 35.0),
                    child: const Text(
                      'This soft and cozy pet bed is perfect for both cats and small dogs. Foldable, detachable, and semi-enclosed for a sense of security.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                                  foregroundColor: primaryPurple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                ),
                                child: const Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 24,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 3,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryPurple,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                ),
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
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
