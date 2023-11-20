import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Pantalla'),
      ),
      body: const Center(
        child: Text('¡Bienvenido a la tercera pantalla!'),
      ),
    );
  }
}