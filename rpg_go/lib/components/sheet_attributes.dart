import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetAttributes extends StatelessWidget {
  const SheetAttributes({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text("9(-1)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
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
                Text("15(+2)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
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
                Text("12(+1)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
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
                Text("12(+1)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
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
                Text("11(0)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
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
                Text("15(+2)",
                style: GoogleFonts.almendra(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.white, height: 1))),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
