import 'package:flutter/material.dart';

class SimpleDialogExample extends StatelessWidget {
  const SimpleDialogExample({super.key});

  // Função para exibir o SimpleDialog
  Future<void> _showSimpleDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Impede que o diálogo feche clicando fora dele
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Escolha uma opção'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Opção 1');
              },
              child: const Text('Opção 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Opção 2');
              },
              child: const Text('Opção 2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Opção 3');
              },
              child: const Text('Opção 3'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSimpleDialog(context);
          },
          child: const Text('Show SimpleDialog'),
        ),
      ),
    );
  }
}