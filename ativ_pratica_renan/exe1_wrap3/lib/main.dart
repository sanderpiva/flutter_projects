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
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Define a cor de fundo do body
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0), // Adiciona espaçamento no topo
          child: Column(
            children: [
              SizedBox(height: 80), // Distância entre a AppBar e os Containers
              Wrap(
                direction: Axis.horizontal, // Direção do Wrap
                spacing: 30, // Espaçamento horizontal entre widgets
                runSpacing: 150, // Espaçamento vertical entre linhas
                alignment: WrapAlignment.spaceAround, // Alinhamento dos widgets
                children: [
                  Container(
                    color: Colors.red[400],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow[400],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue[300],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.pink[300],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.brown[400],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green[300],
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.black,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
