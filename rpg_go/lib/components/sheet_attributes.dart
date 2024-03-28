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
            const SizedBox(height: 10),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("STR",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("INT",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DEX",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("WIS",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CON",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 151, 151),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CHA",
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
