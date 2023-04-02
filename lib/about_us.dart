// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Nosotros')
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            
            Text(
              'Somos una empresa dedicada a brindar soluciones en mantenimiento automotriz desde hace más de 10 años.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Misión',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              
              )
            ),

            SizedBox(height: 10),
            Text(
              'Nuestra misión es brindar un servicio de alta calidad y eficiancia en mantenimiento automotriz para satisfacer las necesidades de nuestros clientes.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Visión',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              
              )
            ),

            SizedBox(height: 10),
            Text(
              'Ser reconocidos como líderes en el mercado de mantenimiento automotriz y expandir nuestros servicios a nivel nacional e internacional.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500
              ),
            )

          ],
        ),
      ),
    );
  }
}