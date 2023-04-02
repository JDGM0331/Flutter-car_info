// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:car_info/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ocultar la etiqueta "Debug" que aparece en la esquina superior derecha de la pantalla
      title: 'Car Collections',
      theme: ThemeData(
        primarySwatch: Colors.red, // Definir paleta de colores principal
        scaffoldBackgroundColor: Colors.black, // Definir el color de fondo de la página principal
      ),
      home: const HomeScreen(),
    );
  }
}