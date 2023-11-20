
import 'package:flutter/material.dart';
import 'package:future_builder/screens/loading_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Inicial'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoadingScreen()));
          },
          child: const Text('Ir a la segunda pantalla'),
        ),
      ),
    );
  }
}


