import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Press App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ButtonPressScreen(),
    );
  }
}

class ButtonPressScreen extends StatefulWidget {
  const ButtonPressScreen({super.key});

  @override
  State<ButtonPressScreen> createState() => _ButtonPressScreenState();
}

class _ButtonPressScreenState extends State<ButtonPressScreen> {
  String displayText = "Press the button";

  void _changeText() {
    setState(() {
      displayText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Press App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              child: const Text('Press'),
            ),
          ],
        ),
      ),
    );
  }
}
