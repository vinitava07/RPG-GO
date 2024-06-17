import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';
import 'package:rpg_go/models/globals.dart' as globals;

class SheetStats extends StatelessWidget {
  final Sheet sheet;

  const SheetStats(this.sheet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              child: Text(
                "CA",
                style: GoogleFonts.almendra(
                  textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 80,
              child: Text(
                "Movement",
                style: GoogleFonts.almendra(
                  textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                "Health Points",
                style: GoogleFonts.almendra(
                  textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              child: Text(
                sheet.armorClass.toString(),
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 80,
              child: Text(
                sheet.movement.toString(),
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 186, 24, 24),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sheet.health.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}