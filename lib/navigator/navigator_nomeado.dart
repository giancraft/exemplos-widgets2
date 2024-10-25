import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example',
      // Define as rotas nomeadas
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreenNamed(),
        '/second': (context) => const SecondScreenNamed(),
      },
    );
  }
}

class FirstScreenNamed extends StatelessWidget {
  const FirstScreenNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar para a segunda tela usando rotas nomeadas
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreenNamed extends StatelessWidget {
  const SecondScreenNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Voltar para a primeira tela
            Navigator.pop(context);
          },
          child: const Text('Go back to First Screen'),
        ),
      ),
    );
  }
}
