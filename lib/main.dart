import 'package:flutter/material.dart';
import 'package:future_builder/presentation/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter FutureBuilder Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: ,
    );
  }
}
