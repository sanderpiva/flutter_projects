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
      home: const ButtonSection(),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fundo azul
        title: const Text(
          'Meu App',
          style: TextStyle(color: Colors.white), // Texto claro
        ),
      ),
      body: Container(
        color: Colors.blue[100], // Fundo azul
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Conteúdo Principal',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black, // Texto claro
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton(Icons.call, 'Ligar'),
                _buildButton(Icons.near_me, 'Rota'),
                _buildButton(Icons.share, 'Compartilhar'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.black), // Ícone com cor branca para contraste
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0), // Adiciona um padding inferior de 8 pixels
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black, // Texto com cor preta para contraste
            ),
          ),
        )
      ],
    );
  }
}
