import 'package:fashion/components/details.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  final List<Map<String, dynamic>> products = [
    {
      "name": "skirt_name",
      "price": "24 \$",
      "desc": "skirt_desc",
      "image": "assets/images/top/2.png",
    },
    {
      "name": "dress1_name",
      "price": "50 \$",
      "desc": "dress1_desc",
      "image": "assets/images/top/3.png",
    },
    {
      "name": "suit_name",
      "price": "70 \$",
      "desc": "suit_desc",
      "image": "assets/images/top/7.png",
    },
    {
      "name": "jumper_name",
      "price": "20 \$",
      "desc": "jumper_desc",
      "image": "assets/images/top/1.png",
    },
    {
      "name": "dress2_name",
      "price": "32 \$",
      "desc": "dress2_desc",
      "image": "assets/images/top/10.png",
    },
    {
      "name": "bag_name",
      "price": "40 \$",
      "desc": "bag_desc",
      "image": "assets/images/top/8.png",
    },
    {
      "name": "blouse1_name",
      "price": "50 \$",
      "desc": "blouse1_desc",
      "image": "assets/images/top/5.png",
    },
    {
      "name": "dress3_name",
      "price": "43 \$",
      "desc": "dress3_desc",
      "image": "assets/images/top/4.png",
    },
    {
      "name": "blouse2_name",
      "price": "40 \$",
      "desc": "blouse2_desc",
      "image": "assets/images/top/9.png",
    },
    {
      "name": "shoes_name",
      "price": "60 \$",
      "desc": "shoes_desc",
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
                          product["name"].toString().tr(),
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
                    product["desc"].toString().tr(),
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
