import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditSheetAttributes extends StatelessWidget {
  const EditSheetAttributes({super.key});

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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                const SizedBox(
                  width: 70,
                  height: 35,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
