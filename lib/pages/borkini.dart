import 'package:fashion/components/list.dart';
import 'package:flutter/material.dart';

class Borkini extends StatelessWidget {
  const Borkini({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 123, 97, 41),
        title: const Text(
          'Borkini',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
            image: 'assets/images/Borkini/b1.jpg',
            title: 'Black Borkini',
            price: '\$29.50',
            description:
                'Classic black borkini, perfect for a day at the beach. Made from quick-dry fabric, giving you full comfort and modest style while swimming.',
          ),
          ProductCard(
            image: 'assets/images/Borkini/b5.jpg',
            title: 'Stylish Borkini',
            price: '\$50.99',
            description:
                'A stylish borkini designed for seaside fun. Lightweight and breathable, ideal for long hours by the water. Gives you a trendy yet modest look.',
          ),
          ProductCard(
            image: 'assets/images/Borkini/b3.jpg',
            title: 'Pink Borkini',
            price: '\$79.45',
            description:
                'Chic pink borkini with floral touches, perfect for beach holidays. The soft fabric ensures comfort while the design keeps you stylish on the shore.',
          ),
          ProductCard(
            image: 'assets/images/Borkini/b7.jpg',
            title: 'Borkini',
            price: '\$40.92',
            description:
                'An elegant borkini made for swimming and beach walks. Provides modest coverage with a fashionable design for confident seaside outings.',
          ),
          ProductCard(
            image: 'assets/images/Borkini/b2.jpg',
            title: 'Borkini',
            price: '\$39',
            description:
                'Simple and practical borkini, ideal for beach trips and swimming. Easy to wear, dries fast, and stays comfortable throughout the day.',
          ),
          ProductCard(
            image: 'assets/images/Borkini/b4.jpg',
            title: 'Borkini',
            price: '\$29.49',
            description:
                'Modern borkini with a sleek design, perfect for enjoying your beach vacation. Provides a modest fit with a stylish edge for sunny days by the sea.',
          ),
        ],
      ),
    );
  }
}
