import 'package:fashion/components/list.dart';
import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  const Shoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 123, 97, 41),
        title: const Text(
          'Shoes',
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
            image: 'assets/images/shoses/sh1.jpg',
            title: 'Elegant Heels',
            price: '\$59.50',
            description:
                'Elegant heels perfect for any occasion. Adds height and confidence with a timeless feminine touch.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh2.jpg',
            title: 'Summer Slippers',
            price: '\$30.99',
            description:
                'Light summer slippers perfect for a fresh and elegant look. Easy to wear and ideal for beach or casual outings.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh4.jpg',
            title: 'Classic Heels',
            price: '\$39.50',
            description:
                'Classic heels that are versatile and stylish for any event. Designed to match both formal and casual outfits.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh3.jpg',
            title: 'Silver Heels',
            price: '\$55.00',
            description:
                'Silver heels with shell shapes and shining stars, giving a dreamy seaside vibe. Perfect for night parties and weddings.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh5.jpg',
            title: 'Modern Sneakers',
            price: '\$69.45',
            description:
                'Trendy sneakers beautifully adorned with delicate patterns for a fresh and elegant look. Comfortable for long walks.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh6.jpg',
            title: 'Burgundy Sneakers',
            price: '\$40.92',
            description:
                'Elegant burgundy sneakers decorated with stylish patterns, perfect for a modern and feminine look. Great for both casual wear and outings.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh8.jpg',
            title: 'White Heels',
            price: '\$39.99',
            description:
                'Classic white heels, perfect for both casual and formal outfits. Adds grace and elegance to your style.',
          ),
          ProductCard(
            image: 'assets/images/shoses/sh9.jpg',
            title: 'White Sneakers',
            price: '\$29.49',
            description:
                'Stylish white sneakers made of leather, with a sleek design and golden details. Durable and comfortable for everyday wear.',
          ),
        ],
      ),
    );
  }
}
