import 'package:flutter/material.dart';
import 'produto_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Loja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Produtos'),
        ),
        body: ListView(

          children: [
            ProdutoCard(nomeProduto: 'Camiseta', preco: 29.99),
            ProdutoCard(nomeProduto: 'Calça Jeans', preco: 89.90),
            // Adicione mais produtos aqui...
          ],
        ),
      ),
    );
  }
}