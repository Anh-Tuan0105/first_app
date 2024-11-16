import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
              children: [
                TextSpan(text: 'G', style: TextStyle(color: Colors.blue)),
                TextSpan(text: 'o', style: TextStyle(color: Colors.red)),
                TextSpan(text: 'o', style: TextStyle(color: Colors.yellow)),
                TextSpan(text: 'g', style: TextStyle(color: Colors.blue)),
                TextSpan(text: 'l', style: TextStyle(color: Colors.green)),
                TextSpan(text: 'e', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 25),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                  prefixIcon: Icon(Icons.search)),
            ),
          )
        ],
      ),
    )));
  }
}
