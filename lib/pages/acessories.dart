import 'package:fashion/components/list.dart';
import 'package:flutter/material.dart';

class Acessories extends StatelessWidget {
  const Acessories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 123, 97, 41),
        title: const Text(
          'Acessories',
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
            image: 'assets/images/accessories/glasses1.jpg',
            title: 'Butterfly Glasses',
            price: '\$29.50',
            description:
                'An elegant glasses perfect for any occasion.\nDesigned with a unique butterfly shape for extra charm.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g5.jpg',
            title: 'Stylish Watch',
            price: '\$50.99',
            description:
                'A beautiful watch perfect for a fresh and elegant look.\nCrafted with precision for both style and durability.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g8.jpg',
            title: 'Classic Acessories',
            price: '\$19.50',
            description:
                'A classic accessory that is versatile and stylish for any event.\nTimeless design that complements any outfit.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g9.jpg',
            title: 'Hair Clip',
            price: '\$15.00',
            description:
                'A hair clip with shell shape and shining stars, giving a dreamy seaside vibe.\nAdds a touch of elegance to your hairstyle.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g3.jpg',
            title: 'Modern Glasses',
            price: '\$79.45',
            description:
                'Beautifully adorned with delicate floral patterns for a fresh and elegant look.\nLightweight and comfortable for all-day wear.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g7.jpg',
            title: 'Bracelet',
            price: '\$40.92',
            description:
                'Elegant hand bracelet decorated with beautiful floral patterns, perfect for a stylish and feminine look.\nMade from premium materials for long-lasting shine.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g2.jpg',
            title: 'Glasses ',
            price: '\$39',
            description:
                'A simple and elegant glasses, perfect for everyday wear and easy to match with any outfit.\nA must-have accessory for casual or formal style.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g6.jpg',
            title: 'Gold Belt',
            price: '\$39.99',
            description:
                'A classic belt, perfect for both casual and formal outfits.\nDesigned with golden details for a luxury touch.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g4.jpg',
            title: 'Black Glasses',
            price: '\$29.49',
            description:
                'Stylish black glasses made of leather, with a sleek design and golden details.\nPerfect for a bold and modern appearance.',
          ),
          ProductCard(
            image: 'assets/images/accessories/g10.jpg',
            title: 'Acessories',
            price: '\$32.99',
            description:
                'Spacious gold accessories with a simple and elegant design, perfect for everyday use.\nAdds sparkle and sophistication to your look.',
          ),
        ],
      ),
    );
  }
}
