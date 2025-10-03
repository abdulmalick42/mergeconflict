import 'package:flutter/material.dart';

void main() {
  runApp(const MergeApp());
}

class MergeApp extends StatelessWidget {
  const MergeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Merge Conflict Demo',
      home: const MergeHome(),
    );
  }
}

class MergeHome extends StatefulWidget {
  const MergeHome({super.key});

  @override
  State<MergeHome> createState() => _MergeHomeState();
}

class _MergeHomeState extends State<MergeHome> {
  int counter = 0;

  String getGreetingMessage() {
    return "Hello from news1";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(getGreetingMessage())),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
