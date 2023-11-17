import 'package:flutter/material.dart';
import 'package:future_builder/screens/screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:Center(
          child: FilledButton(onPressed: onPressed(context), child: Text('Pantalla 2'))
        ),
      ),
    );
  }
  
  onPressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Screen2()));
  }

  
}