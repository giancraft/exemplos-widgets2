import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Índice atual selecionado

  // Lista de widgets que representam cada tela
  final List<Widget> _screens = [
    const FirstScreenBar(),
    const SecondScreenBar(),
    const ThirdScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Example'),
      ),
      body: _screens[_currentIndex], // Exibe a tela correspondente ao índice atual
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Define o índice atualmente selecionado
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Atualiza o índice quando o item é tocado
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class FirstScreenBar extends StatelessWidget {
  const FirstScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class SecondScreenBar extends StatelessWidget {
  const SecondScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
    );
  }
}