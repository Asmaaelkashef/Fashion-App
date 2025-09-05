import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key, required this.text, required this.fun});

  final String text;
  final VoidCallback fun; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 50,
      child: ElevatedButton(
        onPressed: fun, 
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 123, 97, 41),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
