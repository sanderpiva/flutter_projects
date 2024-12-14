import 'package:flutter/material.dart';

class CadastroContato extends StatefulWidget {
  @override
  _CadastroContatoState createState() => _CadastroContatoState();
}

class _CadastroContatoState extends State<CadastroContato> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();


  void _salvarContato() {
    if (_formKey.currentState!.validate()) {
      //print('Nome: ${_nomeController.text}');
      //print('Telefone: ${_telefoneController.text}');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Dados enviados: Nome: ${_nomeController.text}, Telefone: ${_telefoneController.text}',
          ),
        ),
      );

      _nomeController.clear();
      _telefoneController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Contato'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite um nome';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _telefoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: 'Telefone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite um telefone';
                  }
                  return null;
                },
              ),

              SizedBox(
                height: 20.0, 
              ),
              ElevatedButton(
                onPressed: _salvarContato,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                  ),
                ),
                child: Text('Salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}