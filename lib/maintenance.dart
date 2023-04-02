// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mantenimiento')
      ),
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecciona el tipo de mantenimiento que desea realizar: ', 
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                )
            ), 
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text("Mantimiento preventivo"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text("Mantimiento correctivo"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text("Mantimiento predictivo"),
            )
          ]
        )
      )
    );
  }
}