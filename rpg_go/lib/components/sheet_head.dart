import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetHead extends StatelessWidget {
  const SheetHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 195, 194, 194),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10), // Espaço entre a imagem e o título
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20), // Espaço entre o topo e o título
            Text("Jilvio Samil",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white))),
            Text(
              "Class",
              style: GoogleFonts.almendra(
                  textStyle: GoogleFonts.almendra(
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.white, height: 1))),
            ),
            Text(
              "Race",
              style: GoogleFonts.almendra(
                  textStyle: GoogleFonts.almendra(
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.white, height: 1))),
            ),
          ],
        ),
        const SizedBox(width: 70), // Espaço entre o título e a imagem
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 195, 194, 194),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Level",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28, height: 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
