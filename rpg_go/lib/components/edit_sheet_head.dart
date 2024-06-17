import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: TextField(
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      controller: controllerName,
                      textAlign: TextAlign.center,
                      decoration:  const InputDecoration(
                        hintText: 'Nome',
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,),
                        ),
                        filled: false,
                        isCollapsed: true,
                      ),
                      onChanged: (value) {
                        sheet.name = value;
                      },
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: TextField(
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      controller: controllerClass,
                      textAlign: TextAlign.center,
                      decoration:  const InputDecoration(
                        hintText: 'Classe',
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,),
                        ),
                        filled: false,
                        isCollapsed: true,
                      ),
                      onChanged: (value) {
                        sheet.playerClass = value;
                      },
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: TextField(
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      controller: controllerRace,
                      textAlign: TextAlign.center,
                      decoration:  const InputDecoration(
                        hintText: 'Raça',
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,),
                        ),
                        filled: false,
                        isCollapsed: true,
                      ),
                      onChanged: (value) {
                        sheet.race = value;
                      },
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
            child: TextField(
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
              ),
              controller: controllerLevel,
              textAlign: TextAlign.center,
              decoration:  const InputDecoration(
                hintText: 'Level',
                enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,),
                ),
                filled: false,
                isCollapsed: true,
              ),
              onChanged: (value) {
                sheet.level = int.parse(value != '' ? value : '0');
              },
            ),
          ),
        ),
      ],
    );
  }
}
