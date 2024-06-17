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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerStr,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.strength = int.parse(value != '' ? value : '0');
                        },
                      ),
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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerInt,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.intelligence = int.parse(value != '' ? value : '0');
                        },
                      ),
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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerDex,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.dexterity = int.parse(value != '' ? value : '0');
                        },
                      ),
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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerWis,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.wisdom = int.parse(value != '' ? value : '0');
                        },
                      ),
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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerCon,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.constitution = int.parse(value != '' ? value : '0');
                        },
                      ),
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
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        controller: controllerCha,
                        textAlign: TextAlign.center,
                        decoration:  const InputDecoration(
                          hintText: '100',
                          enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          filled: false,
                          isCollapsed: true,
                        ),
                        onChanged: (value) {
                          sheet.charisma = int.parse(value != '' ? value : '0');
                        },
                      ),
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
