import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class EditSheetHead extends StatelessWidget {
  const EditSheetHead({super.key});
  //String _name = '';

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
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10), // Espaço entre o topo e o título
            SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
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
            SizedBox(height: 5),
            SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
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
            SizedBox(height: 5),
            SizedBox(
              width: 100,
              height: 30,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
              width: 60,
              height: 40,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
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
