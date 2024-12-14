import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        // Add padding around all child widgets
        padding:  const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 80,
              height: 120,
              color: Colors.red,
            ),
            const SizedBox(height: 10.0), // Add spacing between containers
            Container(
              width: 80,
              height: 120,
              color: Colors.blue,
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 80,
              height: 120,
              color: Colors.green[300],
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 80,
              height: 120,
              color: Colors.yellow[300],
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 80,
              height: 120,
              color: Colors.pink[300],
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 80,
              height: 120,
              color: Colors.orange[300],
            ),
          ],
        ),
      ),
    );
  }
}