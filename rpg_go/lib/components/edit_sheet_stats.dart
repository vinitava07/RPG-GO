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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Class Armor",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            Container(
              width: 60,
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
                  controller: controllerClassArmor,
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
                    sheet.armorClass = int.parse(value != '' ? value : '0');
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Movement",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            Container(
              width: 60,
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
                  controller: controllerMovement,
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
                    sheet.movement = int.parse(value != '' ? value : '0');
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Health Points",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.white))),
            Container(
              width: 150,
              height: 35,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 186, 24, 24),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                child: TextField(
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  controller: controllerHP,
                  textAlign: TextAlign.center,
                  decoration:  const InputDecoration(
                    hintText: '100',
                    enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 186, 24, 24),)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 186, 24, 24),),
                    ),
                    fillColor: Color.fromARGB(255, 186, 24, 24),
                    filled: true,
                    isCollapsed: true,
                  ),
                  onChanged: (value) {
                    sheet.health = int.parse(value != '' ? value : '0');
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
