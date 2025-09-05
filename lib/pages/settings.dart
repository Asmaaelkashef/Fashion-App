import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF997D41),
        toolbarHeight: 85,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              SizedBox(width: 11),
              Text(
                "Settings",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 220,
              height: 210,
              margin: const EdgeInsets.only(top: 5),
              child: Image.asset("assets/images/splash/Fashion Logo.png"),
            ),
          ),
          const SizedBox(height: 50),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 138, 137, 137),
              size: 32,
            ),
            title: const Text(
              "Personal Information",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 138, 137, 137),
              size: 32,
            ),
            title: const Text(
              "Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Color.fromARGB(255, 138, 137, 137),
              size: 32,
            ),
            title: const Text(
              "History",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.payment,
              color: Color.fromARGB(255, 138, 137, 137),
              size: 32,
            ),
            title: const Text(
              "Payment Methods",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
