import 'package:flutter/material.dart';
import 'package:future_builder/presentation/widgets/side_menu.dart';
import 'package:go_router/go_router.dart';


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
            context.pushNamed('login');
          },
          child: const Text('Ir a la segunda pantalla'),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}


