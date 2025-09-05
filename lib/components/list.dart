import 'package:fashion/components/categoryDet.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  final String image;
  final String title;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false, 
            barrierColor: Colors.black.withOpacity(0.7),
            pageBuilder: (context, animation, secondaryAnimation) =>
                Categorydet(
                  image: image,
                  title: title,
                  price: price,
                  description: description,
                ),

          ),
        );
      },

      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(image, height: 165, fit: BoxFit.cover),
              const SizedBox(height: 1),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 123, 97, 41),
                ),
              ),
              const SizedBox(height: 1),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
