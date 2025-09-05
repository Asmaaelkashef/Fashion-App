import 'package:fashion/components/details.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  final List<Map<String, dynamic>> products = [
    {
      "name": "Skirt",
      "price": "24 \$",
      "desc":
          "Beautiful skirt from Zara made with soft, high-quality fabric. Designed for both comfort and elegance, perfect for casual outings or semi-formal events.",
      "image": "assets/images/top/2.png",
    },
    {
      "name": "Dress",
      "price": "50 \$",
      "desc":
          "Stylish Dress from H&M with a modern cut and lightweight material. This versatile piece is perfect for parties, dinners, and chic looks.",
      "image": "assets/images/top/3.png",
    },
    {
      "name": "Suits",
      "price": "70 \$",
      "desc":
          "Elegant slim-fit suit with modern style, tailored for a sharp and professional look. Perfect for business meetings, weddings, or formal events.",
      "image": "assets/images/top/7.png",
    },
    {
      "name": "Jumper",
      "price": "20 \$",
      "desc":
          "Casual pullover with a modern design, crafted from warm yet breathable fabric. Ideal for layering in colder weather while staying stylish.",
      "image": "assets/images/top/1.png",
    },
    {
      "name": "Dress",
      "price": "32 \$",
      "desc":
          "Elegant pleated dress for a chic look. Made with flowy fabric, this dress ensures comfort while keeping you fashionable during special occasions.",
      "image": "assets/images/top/10.png",
    },
    {
      "name": "Bag",
      "price": "40 \$",
      "desc":
          "Stylish bag from Defacto with a practical design and durable material. Spacious enough for daily essentials while maintaining a trendy appearance.",
      "image": "assets/images/top/8.png",
    },
    {
      "name": "Blouse",
      "price": "50 \$",
      "desc":
          "Casual cotton blouse, perfect for events and everyday wear. Soft to the touch and breathable, making it a must-have for any wardrobe.",
      "image": "assets/images/top/5.png",
    },
    {
      "name": "Dress",
      "price": "43 \$",
      "desc":
          "Stylish dress for summer with a light, airy feel. Designed to keep you comfortable in warm weather while offering a chic, timeless style.",
      "image": "assets/images/top/4.png",
    },
    {
      "name": "Blouse",
      "price": "40 \$",
      "desc":
          "Comfortable blouse from ZARA with a relaxed fit and modern detailing. Ideal for pairing with jeans, skirts, or trousers for a smart-casual look.",
      "image": "assets/images/top/9.png",
    },
    {
      "name": "Shoes",
      "price": "60 \$",
      "desc":
          "Comfortable shoes for daily workouts and casual wear. Designed with a cushioned sole for extra support and durability, perfect for long hours of walking.",
      "image": "assets/images/top/6.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.62,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return Details(product: product);
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 123, 97, 41),
                  width: 0.7,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        product["image"],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        product["price"],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 123, 97, 41),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product["desc"],
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

