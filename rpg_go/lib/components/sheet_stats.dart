import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetStats extends StatelessWidget {
  const SheetStats({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text(
              "16",
              style: GoogleFonts.almendra(
                  textStyle: GoogleFonts.almendra(
                      textStyle: const TextStyle(
                          fontSize: 40, color: Colors.white, height: 0.7))),
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
            Text(
              "30",
              style: GoogleFonts.almendra(
                  textStyle: GoogleFonts.almendra(
                      textStyle: const TextStyle(
                          fontSize: 40, color: Colors.white, height: 0.5))),
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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10/10",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
