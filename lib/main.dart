import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> numbers = List.generate(10, (index) => index + 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View App'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${numbers[index]}'),
          );
        },
      ),
    );
  }
}
