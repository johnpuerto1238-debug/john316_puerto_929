import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(color: Colors.purple)),
          SizedBox(height: 50),
          Text("Bisan ano lang da"),

          Row(
            children: [
              Text("Dugay mag buhi ba"),
              SizedBox(width: 67),
              Text("Bisan ano lang da"),
            ],
          ),

          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(child: Center(child: Text("asdasdasd"))),
          ),
        ],
      ),
    );
  }
}
