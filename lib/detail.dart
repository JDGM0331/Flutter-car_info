// ignore_for_file: implementation_imports, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'models.dart';

class DetailView extends StatefulWidget {

  const DetailView({
    Key? key, 
    required this.items
  }): super(key: key);

  final Car items; 

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageArea( // Imagen principal del vehículo (se establece como portada dentro de la vista general)
            items: widget.items
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                color: Colors.white, 
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${widget.items.name}', 
                        style: const TextStyle(
                          color: Color.fromARGB(255, 84, 10, 10), 
                          fontSize: 28, 
                          fontWeight: FontWeight.bold
                        )
                      ), 
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Tipo: Deportivo con transmisión base, neumaticos de fabrica y sin aceleración adicional.', 
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 7, 7), 
                          fontSize: 18
                        )
                      ), 
                      const SizedBox(
                        height: 15,
                      ), 
                      const Text(
                        'Creado en Noruega', 
                        style: TextStyle(
                          color: Color(0xFFbaaeba), 
                          fontSize: 12
                        )
                      ), 
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20), 
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star_purple500_rounded, 
                              color: Colors.yellow,
                              size: 16
                            ),
                            Icon(
                              Icons.star_purple500_rounded, 
                              color: Colors.yellow,
                              size: 16
                            ),
                            Icon(
                              Icons.star_purple500_rounded, 
                              color: Colors.yellow,
                              size: 16
                            ),
                            Icon(
                              Icons.star_purple500_rounded, 
                              color: Colors.yellow,
                              size: 16
                            ),
                            Text(
                              '   2 en el mundo / Vistas 540', 
                              style: TextStyle(
                                color: Color(0xFF7f628d), 
                                fontSize: 12, 
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ]
                        )
                      ), 
                      const Divider(), 
                      const Text(
                        'Pegasus Inc', 
                        style: TextStyle(
                          color: Color.fromARGB(255, 141, 98, 98), 
                          fontSize: 20
                        )
                      ), 
                      const Text(
                        'Empresa que hizo la inspección al vehículo y cuenta con la calificación para rankear a este vehiculo. ',
                      ),
                      const SizedBox(
                        height: 12
                      ), 
                      const Divider()
                    ],
                  )
                )
              ),
              const InformationButton() // Botón para ver más información
            ]
          )
        ],
      )
    );
  }
}

// IMAGEN PRINCIPAL DEL VEHÍCULO 
class ImageArea extends StatelessWidget {

  const ImageArea({
    Key? key, 
    required this.items
  }): super(key: key);

  final Car items; 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(items.image),
              fit: BoxFit.cover
            )
          )
        ), 
        Positioned( // Botón de volver a la página principal
          bottom: 35,
          right: 60,
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18)
              ),
              color: Color.fromARGB(255, 254, 148, 148)
            ),
            child: IconButton(
              color: Colors.white, 
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        )
      ],
    );
  }
}

// BOTÓN PARA VER MÁS INFORMACIÓN
class InformationButton extends StatelessWidget {
  const InformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 70, 
        width: MediaQuery.of(context).size.width * 0.45, 
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 254, 120, 120), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50)
          )
        ),
        child: const Center(
          child: Text(
            'Más información...',
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              fontSize: 12
            )
          )
        ),
      )
    );
  }
}