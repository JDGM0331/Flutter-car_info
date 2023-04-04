// ignore_for_file: implementation_imports, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'about_us.dart';
import 'data.dart';
import 'maintenance.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Garantiza que el contenido principal de la aplicación no se superponga con los elementos del sistema
        child: Column(
          children: const [
            TopBar(), // Barra de navegación superior
            FeaturedListView(), // Vista de lista de populares
            PopularDivider() // Divisor de populares
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(), // Barra de navegación inferior 
    );
  }
}


// BARRA DE NAVEGACIÓN SUPERIOR
class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Agrega un espacio igual entre cada par de elementos secundarios
            children: [
              Icon(
                Icons.sort,
                size: 40,
                color: Colors.white,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.precision_manufacturing, color: Colors.white),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Bienvenido a RoadCars',
                    style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25)
                  ),
                  Text(
                    'Nuevos vehiculos populares',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 17
                    )
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


// DIVISOR DE POPULARES
class PopularDivider extends StatelessWidget {
  const PopularDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Vehiculos Únicos', 
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Text(
            'Datos 2023',
            style: TextStyle(
              color: Colors.white
            )
          )
        ],
      ),
    );
  }
}


// BARRA DE NAVEGACIÓN INFERIOR
class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.car_repair_outlined),
          label: 'Mantenimiento'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: 'Nosotros'
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen())
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MaintenancePage())
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUs())
            );
            break;
        }
      },
    );
  }
}

// VISTA DE LISTA DE DESTACADOS
class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector( // Detector de gestos 
            child: Card(
              image: carrousellPrincipal[index].image,
              name: carrousellPrincipal[index].name,
              model: carrousellPrincipal[index].model,
            ),
            onTap: null,
          );
        }, 
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ), 
        itemCount: carrousellPrincipal.length
      )
    );
  }
}

// TARJETA DE VISTA PARA AUTOS
class Card extends StatelessWidget {

  final String image;
  final String name;
  final String model;

  const Card({
    Key ? key, 
    required this.image,
    required this.name,
    required this.model
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ), 
        borderRadius: BorderRadius.all(
          Radius.circular(30)
        ),
      ),
      height: 300,
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(1)
          ), 
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter, 
            colors: [
              Colors.grey.withOpacity(0.0),
              Colors.black38
            ],
            stops: const[0.5, 1.0]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name, 
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white)
              ),
              Text(
                model, 
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white)
              )
            ]
          )
        )
      )
    );
  }
}