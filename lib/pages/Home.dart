import 'package:fashion/components/bestSeller.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF997D41),
        toolbarHeight: 85,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              Image.asset("assets/images/splash/profile.png"),
              const SizedBox(width: 11),
              Text(
                "homeTitle".tr(),
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 10),
            child: IconButton(
              icon: const Icon(Icons.language, color: Colors.white , size: 39,),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.language , color: Color(0xFF997D41),size: 30,),
                            title: const Text("English" , style: TextStyle(color: Color(0xFF997D41), fontSize: 22),),
                            onTap: () {
                              context.setLocale(const Locale('en', 'US'));
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.language , color: Color(0xFF997D41),size: 30,),
                            title: const Text("العربية" , style: TextStyle(color: Color(0xFF997D41), fontSize: 22),),
                            onTap: () {
                              context.setLocale(const Locale('ar', 'EG'));
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 370,
                height: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(
                  top: 17,
                  right: 10,
                  left: 10,
                  bottom: 9,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 123, 97, 41),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 123, 97, 41),
                    ),
                    hintText: "searchHint".tr(), // 👈 ترجمة الـ hint
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 123, 97, 41),
                      fontSize: 19,
                    ),
                    border: InputBorder.none,
                  ),
                  cursorColor: const Color.fromARGB(255, 123, 97, 41),
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
