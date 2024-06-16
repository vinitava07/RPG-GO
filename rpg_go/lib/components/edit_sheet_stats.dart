import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';

class EditSheetStats extends StatelessWidget {
  final Sheet sheet;
  const EditSheetStats(this.sheet, {super.key});

  @override
  Widget build(BuildContext context) {
    final controllerClassArmor = TextEditingController();
    final controllerMovement = TextEditingController();
    final controllerHP = TextEditingController();
    controllerClassArmor.text = sheet.armorClass.toString();
    controllerMovement.text = sheet.movement.toString();
    controllerHP.text = sheet.health.toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text("CA",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            SizedBox(
              width: 60,
              height: 35,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                controller: controllerClassArmor,
                decoration: const InputDecoration(
                  hintText:
                      '99',
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
                  sheet.armorClass = int.parse(value != '' ? value : '0');
                },
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text("Movement",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            SizedBox(
              width: 60,
              height: 35,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controllerMovement,
keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText:
                      '99', //se usuario existente, aparece o nome atual
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
                  sheet.movement = int.parse(value != '' ? value : '0');
                },
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text("HP",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            Container(
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 186, 24, 24),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: controllerHP,
                      decoration: const InputDecoration(
                        hintText:
                            '99/99', //se usuario existente, aparece o nome atual
                        hintStyle: TextStyle(fontFamily: "Revol"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 186, 24, 24))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 186, 24, 24)),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        sheet.health = int.parse(value != '' ? value : '0');
                      },
                    ),
            ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
