import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  const TextStylingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Medium Italic Text',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Small Underlined Text',
              style: TextStyle(
                fontSize: 14,
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Custom Font Weight',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
