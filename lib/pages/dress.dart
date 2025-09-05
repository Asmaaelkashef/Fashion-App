import 'package:fashion/components/list.dart';
import 'package:flutter/material.dart';

class Dress extends StatelessWidget {
  const Dress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 123, 97, 41),
        title: const Text(
          'Fashion',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        children: const [
          ProductCard(
            image: 'assets/images/Dress/ds1.png',
            title: 'White Dress',
            price: '\$49.99',
            description:
                'An elegant white dress perfect for any occasion. Crafted from soft fabric, giving you comfort and timeless charm all day long.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds2.png',
            title: 'Cherry Dress',
            price: '\$59.99',
            description:
                'A beautiful white dress decorated with cherry patterns, perfect for a fresh and elegant look. Light and breezy, making it ideal for summer outings.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds3.png',
            title: 'Flowery Dress',
            price: '\$39.50',
            description:
                'A flowery dress that is versatile and stylish for any event. Adds a feminine touch with vibrant patterns that stand out anywhere.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds4.png',
            title: 'Shells Dress',
            price: '\$69.99',
            description:
                'An elegant white dress decorated with shells and shining stars, giving a dreamy seaside vibe. Perfect for beach parties and summer evenings.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds5.png',
            title: 'Pink Dress',
            price: '\$79.45',
            description:
                'A graceful tall pink dress beautifully adorned with delicate floral patterns for a fresh and elegant look. The soft pastel tone makes it perfect for weddings and celebrations.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds6.png',
            title: 'Basic Skirt',
            price: '\$39',
            description:
                'A simple and elegant white basic skirt, perfect for everyday wear and easy to match with any outfit. A wardrobe essential for a minimal yet chic style.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds7.png',
            title: 'Tall Skirt',
            price: '\$59.92',
            description:
                'Tall elegant skirt decorated with beautiful floral patterns, perfect for a stylish and feminine look. Flows gracefully with every step.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds8.png',
            title: 'Summer Skirt',
            price: '\$29.49',
            description:
                'A light and breezy summer skirt adorned with delicate baby blue flowers, perfect for sunny days. Easy to style with both casual tops and elegant blouses.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds9.png',
            title: 'White Blouse',
            price: '\$39.99',
            description:
                'A classic white blouse with long sleeves, perfect for both casual and formal outfits. Soft on the skin and versatile for all seasons.',
          ),
          ProductCard(
            image: 'assets/images/Dress/ds10.png',
            title: 'Sleeve Chemise',
            price: '\$32.99',
            description:
                'A soft pink long-sleeve chemise that’s easy to style for casual or chic looks. Comfortable fabric makes it ideal for daily wear or evening outings.',
          ),
        ],
      ),
    );
  }
}
