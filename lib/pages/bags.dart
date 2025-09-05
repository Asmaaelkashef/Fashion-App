import 'package:fashion/components/list.dart';
import 'package:flutter/material.dart';

class Bags extends StatelessWidget {
  const Bags({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 123, 97, 41),
        title: const Text(
          'Bags',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        children: const [
          ProductCard(
            image: 'assets/images/bags/bag1.jpg',
            title: 'Black Bag',
            price: '\$49.50',
            description:
                'An elegant black bag perfect for any occasion.\nCrafted from durable material for long-lasting use.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag2.jpg',
            title: 'Stylish Bag',
            price: '\$59.99',
            description:
                'A beautiful bag perfect for a fresh and elegant look.\nTrendy and lightweight for daily wear.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag3.jpg',
            title: 'Classic Bag',
            price: '\$39.50',
            description:
                'A classic bag that is versatile and stylish for any event.\nA timeless design that matches every outfit.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag4.jpg',
            title: 'Shelled Bag',
            price: '\$69.99',
            description:
                'A white bag with shell shape and shining stars, giving a dreamy seaside vibe.\nPerfect accessory for summer days.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag6.jpg',
            title: 'White Bag',
            price: '\$79.45',
            description:
                'Beautifully adorned with delicate floral patterns for a fresh and elegant look.\nAdds charm and sophistication.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag5.jpg',
            title: 'Brown Bag ',
            price: '\$39',
            description:
                'A simple and elegant brown basic bag, perfect for everyday wear and easy to match with any outfit.\nDesigned for practicality and style.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag7.jpg',
            title: 'Fashioned Bag',
            price: '\$59.92',
            description:
                'Elegant bag decorated with beautiful floral patterns, perfect for a stylish and feminine look.\nMade to stand out in every occasion.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag8.jpg',
            title: 'Burgundy Bag',
            price: '\$29.49',
            description:
                'Stylish burgundy handbag made of leather, with a sleek design and golden details.\nA bold accessory for modern fashion.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag9.jpg',
            title: 'White Bag',
            price: '\$39.99',
            description:
                'A classic white bag, perfect for both casual and formal outfits.\nSpacious and comfortable to carry anywhere.',
          ),
          ProductCard(
            image: 'assets/images/bags/bag10.jpg',
            title: 'Large Bag',
            price: '\$32.99',
            description:
                'Spacious beige handbag with a simple and elegant design, perfect for everyday use.\nIdeal for carrying all your essentials.',
          ),
        ],
      ),
    );
  }
}
