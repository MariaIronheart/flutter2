import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MinhaApp());
}

class MinhaApp extends StatelessWidget {
  const MinhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      home: Navegacao()
      );
  }
}

class Navegacao extends StatefulWidget {
  Navegacao({super.key});

  
  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
    
  int telaSelecionada = 0;

    final List<Widget> screens = [
      const Home(),
      const Favoritos(),
      const Configuracoes()
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navegação'),),
      body: screens[telaSelecionada],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: telaSelecionada,
        onTap: (valor) {
          setState(() {
            telaSelecionada = valor;
          });
          
        }, items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações')
        ],
      )
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home'),);
  }
}

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Favoritos'),);
  }
}

class Configuracoes extends StatelessWidget {
  const Configuracoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Configurações'),);
  }
}