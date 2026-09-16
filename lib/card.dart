import 'package:flutter/material.dart';

class TarjetaPersona extends StatelessWidget {
  final String inicial;
  final String nombre;
  final String descripcion;
  final String funcion;
  final String foto;

  const TarjetaPersona({
    super.key,
    required this.inicial,
    required this.nombre,
    required this.descripcion,
    required this.funcion,
    required this.foto
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(foto),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(descripcion),
                  Text(funcion),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
