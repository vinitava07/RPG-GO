import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';

class EditSheetAttributes extends StatelessWidget {
  final Sheet sheet;
  const EditSheetAttributes(this.sheet, {super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerStr = TextEditingController();
    final TextEditingController controllerInt = TextEditingController();
    final TextEditingController controllerDex = TextEditingController();
    final TextEditingController controllerWis = TextEditingController();
    final TextEditingController controllerCon = TextEditingController();
    final TextEditingController controllerCha = TextEditingController();
    controllerStr.text = sheet.strength.toString();
    controllerInt.text = sheet.intelligence.toString();
    controllerDex.text = sheet.dexterity.toString();
    controllerWis.text = sheet.wisdom.toString();
    controllerCon.text = sheet.constitution.toString();
    controllerCha.text = sheet.charisma.toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [  
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("STR",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerStr,
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
                      sheet.strength = int.parse(value != '' ? value : '0');
                    },
                  ),
                ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("INT",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerInt,
                    decoration: const InputDecoration(
                      hintText:
                          '99(+9)', //se usuario existente, aparece o nome atual
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
                      sheet.intelligence = int.parse(value != '' ? value : '0');
                    },
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DEX",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerDex,
                    decoration: const InputDecoration(
                      hintText:
                          '99(+9)', //se usuario existente, aparece o nome atual
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
                      sheet.dexterity = int.parse(value != '' ? value : '0');
                    },
                  ),
                ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("WIS",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerWis,
                    decoration: const InputDecoration(
                      hintText:
                          '99(+9)', //se usuario existente, aparece o nome atual
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
                      sheet.wisdom = int.parse(value != '' ? value : '0');
                    },
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CON",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerCon,
                    decoration: const InputDecoration(
                      hintText:
                          '99(+9)', //se usuario existente, aparece o nome atual
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
                      sheet.constitution = int.parse(value != '' ? value : '0');
                    },
                  ),
                ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(35, 37, 38, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CHA",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
                SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: controllerCha,
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
                      sheet.charisma = int.parse(value != '' ? value : '0');
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
