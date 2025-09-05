import 'package:fashion/components/bestSeller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF997D41),
        toolbarHeight: 85,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              Image.asset("assets/images/splash/profile.png"),
              const SizedBox(width: 11),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 370,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                margin: const EdgeInsets.only(
                  top: 17,
                  right: 10,
                  left: 10,
                  bottom: 9,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 123, 97, 41),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 123, 97, 41),
                    ),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 123, 97, 41),
                      fontSize: 19,
                    ),
                    border: InputBorder.none, 
                  ),
                  cursorColor: Color.fromARGB(255, 123, 97, 41),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                width: 370,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/splash/sales.gif",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
