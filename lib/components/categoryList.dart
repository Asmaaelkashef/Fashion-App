import 'package:fashion/pages/acessories.dart';
import 'package:fashion/pages/bags.dart';
import 'package:fashion/pages/borkini.dart';
import 'package:fashion/pages/dress.dart';
import 'package:fashion/pages/shoes.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<Map<String, String>> categories = const [
    {"title": "Dress", "image": "assets/images/icons/dress.jpg"},
    {"title": "Bags", "image": "assets/images/icons/bags.jpg"},
    {"title": "Accessories", "image": "assets/images/icons/acessories.jpg"},
    {
      "title": "Shoes",
      "image": "assets/images/icons/pexels-ron-lach-8386641.jpg",
    },
    {"title": "Borkini", "image": "assets/images/icons/borkini.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      padding: const EdgeInsets.all(16),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 66),
          child: GestureDetector(
            onTap: () {
              switch (category["title"]) {
                case "Dress":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Dress()),
                  );
                  break;
                case "Bags":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Bags()),
                  );
                  break;
                case "Accessories":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Acessories()),
                  );
                  break;
                case "Shoes":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Shoes()),
                  );
                  break;
                case "Borkini":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Borkini()),
                  );
                  break;
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 123, 97, 41).withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(category["image"]!, fit: BoxFit.cover),
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Text(
                          category["title"]!,
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF997D41),
                          ),
                        ),
                        Text(
                          category["title"]!,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
