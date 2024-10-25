import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Exemplo de Tooltip em um botão
            Tooltip(
              message: 'Isso é um botão de adição!',
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ),

            const SizedBox(height: 20),

            // Exemplo de Tooltip em um ícone
            const Tooltip(
              message: 'Isso é um icon de informação!',
              child: Icon(
                Icons.info,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}