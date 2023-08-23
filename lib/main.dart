import 'package:flutter/material.dart';
import 'package:flutter_project11/Gridview.builder.dart';
import 'package:flutter_project11/Gridview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 16, 84, 71)),
        useMaterial3: true,
      ),
      home: First());
    
  }
}
