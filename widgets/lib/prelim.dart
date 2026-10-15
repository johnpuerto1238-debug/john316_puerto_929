import 'package:flutter/material.dart';

void main() {
  runApp(const PrelimExamApp());
}

class PrelimExamApp extends StatelessWidget {
  const PrelimExamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prelim Exam Layout',
      home: Scaffold(
        backgroundColor: Colors.pink[50], // Light pink background
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Prelim Exam',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'John 3:16 A Puerto',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    'BOX 1',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: const Text(
                        'BOX 2',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: const Text(
                        'BOX 3',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
