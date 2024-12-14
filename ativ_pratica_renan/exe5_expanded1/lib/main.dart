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
      backgroundColor: const Color.fromARGB(255, 230, 240, 245),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenHeight = constraints.maxHeight;
          double expandedHeight = screenHeight * 0.40;
          double height100 = screenHeight * 0.20;
          double height200 = screenHeight * 0.40;

          return Center(
            child: Column(
              children: [
                SizedBox(
                  height: expandedHeight,
                  child: Container(
                    color: Colors.lightBlueAccent[400],
                    child: const Center(
                      child: Text(
                        'Expandido',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height100,
                  child: Container(
                    color: Colors.blue[500],
                    child: const Center(
                      child: Text(
                        '100',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height200,
                  child: Container(
                    color: Colors.blue[800],
                    child: const Center(
                      child: Text(
                        '200',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}