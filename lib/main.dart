import 'package:flutter/material.dart';
import 'package:taller1/card.dart';

void main() {
  runApp(const AppEquipo());
}

class AppEquipo extends StatelessWidget {
  const AppEquipo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF4F7FB),
        appBar: AppBar(
          title: const Text('Nuestro equipo'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            TarjetaPersona(
              inicial: 'L',
              nombre: 'Levis Ortiz',
              descripcion: 'Gestor de desarrollo',
              funcion: "Supervisa El proyecto",
              foto: 'assest/dic.png'

            ),
            TarjetaPersona(
              inicial: 'M',
              nombre: 'Miguel Rodriguez',
              descripcion: 'Desarrollador',
              funcion: "Hace Realidad el proyecto",
              foto: 'assest/migue.png'
            ),
          ],
        ),
      ),
    );
  }
}