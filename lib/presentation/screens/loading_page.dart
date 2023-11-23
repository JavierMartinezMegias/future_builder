import 'package:flutter/material.dart';
import 'package:future_builder/presentation/screens/screen2.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  Future<void> _fakeLoading() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargando...'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _fakeLoading(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              Future.delayed(Duration.zero, () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ThirdScreen()));
              });
              return Container();
            }
          },
        ),
      ),
    );
  }
}
