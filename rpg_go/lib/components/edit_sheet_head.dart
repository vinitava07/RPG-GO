import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class EditSheetHead extends StatelessWidget {
  final controllerName;
  final controllerClass;
  final controllerRace;
  final controllerLevel;
  EditSheetHead({super.key, required this.controllerName ,required this.controllerClass,required this.controllerRace,required this.controllerLevel});

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
            const SizedBox(height: 10), // Espaço entre o topo e o título
            SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                controller: controllerName,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText:
                      'Nome', //se usuario existente, aparece o nome atual
                  hintStyle: TextStyle(fontFamily: "Revol"),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
             SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controllerClass,
                decoration: const InputDecoration(
                  hintText:
                      'Class', //se usuario existente, aparece o nome atual
                  hintStyle: TextStyle(fontFamily: "Revol"),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controllerRace,
                decoration: const InputDecoration(
                  hintText:
                      'Race', //se usuario existente, aparece o nome atual
                  hintStyle: TextStyle(fontFamily: "Revol"),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                cursorColor: Colors.black,
              ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
              width: 60,
              height: 40,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controllerLevel,
                decoration: const InputDecoration(
                  hintText:
                      'Level', //se usuario existente, aparece o nome atual
                  hintStyle: TextStyle(fontFamily: "Revol"),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                cursorColor: Colors.black,
              ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
