import 'package:flutter/material.dart';
import 'package:rpg_go/models/Sheet.dart';

class EditSheetHead extends StatelessWidget {
  final Sheet sheet;
  const EditSheetHead(this.sheet, {super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerClass = TextEditingController();
    final TextEditingController controllerRace = TextEditingController();
    final TextEditingController controllerLevel = TextEditingController();
    controllerName.text = sheet.name;
    controllerClass.text = sheet.playerClass;
    controllerRace.text = sheet.race;
    controllerLevel.text = sheet.level.toString();
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
                onChanged: (value) {
                  sheet.name = value;
                },
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
                onChanged: (value) {
                  sheet.playerClass = value;
                }
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
                onChanged: (value) {
                  sheet.race = value;
                }
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
                onChanged: (value) {
                  sheet.level = int.parse(value != '' ? value : '0');
                },
              ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}
