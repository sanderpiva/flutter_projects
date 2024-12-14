import 'package:flutter/material.dart';

class ProdutoCard extends StatelessWidget {
  final String nomeProduto;
  final double preco;

  const ProdutoCard({Key? key, required this.nomeProduto, required this.preco})
      : super(key: key);

  void _adicionarAoCarrinho(BuildContext context) {
    //print('Produto: $nomeProduto R\$ $preco adicionado ao carrinho!');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Produto: $nomeProduto R\$ $preco, adicionado ao carrinho!',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(nomeProduto),
        subtitle: Text('R\$ ${preco.toStringAsFixed(2)}'),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => _adicionarAoCarrinho(context),
          child: Text('Comprar'),
        ),
      ),
    );
  }
}
