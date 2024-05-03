import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rpg_go/pages/edit_sheet_page.dart';
import 'package:rpg_go/pages/sheet_page.dart';

class EditSheetOptions extends StatelessWidget {
  const EditSheetOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 220, 17, 17),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/attack.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Attack",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 223, 235, 0),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/skills.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Skills",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 1, 87, 224),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/spells.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Spells",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 0, 255, 187),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/features.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Features",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 176, 7, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/inventory.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Inventory",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(211, 102, 39, 8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/sheet_icons/tools.svg', // Caminho do arquivo SVG no diretório 'assets'
                    width: 60,
                    height: 60,
                    fit: BoxFit.scaleDown,
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(150, 0, 0, 0),
                        BlendMode.srcIn), // Cor branca com 50% de opacidade
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text("Tools",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SheetPage()));
              }, 
              child: 
                const Text('SAVE'),)
          ],
        )
      ],
    );
  }
}
