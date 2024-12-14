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
      title: 'Flutter Demo',
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
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("MEU APP", style: TextStyle(color: Colors.white)),
      ),
      body: Wrap(
        children: [
          Container(
            color: Colors.red,
            width: 120,
            height: 120,
          ),
          Container(
            color: Colors.blue,
            width: 120,
            height: 120,
          ),
          Container(
            color: Colors.yellow,
            width: 120,
            height: 120,
          ),
          Container(
            color: Colors.green,
            width: 120,
            height: 120,
          ),
          Container(
            color: Colors.orange,
            width: 120,
            height: 120,
          ),
          Container(
            color: Colors.pink,
            width: 120,
            height: 120,
          ),
        ],
      ),
    );
  }
}
