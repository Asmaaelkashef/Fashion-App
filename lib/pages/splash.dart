import 'package:fashion/components/button.dart';
import 'package:fashion/pages/login.dart';
import 'package:fashion/pages/signin.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/splash/bg1.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: screenHeight * 0.21,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: const Center(
                    child: Text(
                      "Welcome to Your one-stop destination for trendy outfits, and everything fashion",
                      style: TextStyle(
                        color: Color.fromARGB(255, 139, 109, 44),
                        fontSize: 20,
                        letterSpacing: 0.7,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/splash/bg2.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 19,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Bottom(
                        text: "Get Started Now ",
                        fun: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Have Account ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              letterSpacing: 0.2,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signin(),
                                ),
                              );
                            },
                            child: Text(
                              "log-in",
                              style: TextStyle(
                                color: Color.fromARGB(255, 85, 68, 32),
                                fontSize: 16,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:Color(0xFF997D41),
                                decorationThickness: 1.5,
                                decorationStyle: TextDecorationStyle.solid,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
