import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SheetOptions extends StatelessWidget {
  const SheetOptions({super.key});

  void _showModalBottomSheet(BuildContext context, String title, List<String> items) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: GoogleFonts.almendra(
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            items[index],
                            style: GoogleFonts.almendra(
                              textStyle: const TextStyle(fontSize: 16),
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Attack', ['Attack 1', 'Attack 2', 'Attack 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 220, 17, 17),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/attack.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text("Attack",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Skills', ['Skill 1', 'Skill 2', 'Skill 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 223, 235, 0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/skills.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
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
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Spells', ['Spell 1', 'Spell 2', 'Spell 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 1, 87, 224),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/spells.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text("Spells",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Features', ['Feature 1', 'Feature 2', 'Feature 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 0, 255, 187),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/features.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
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
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Inventory', ['Item 1', 'Item 2', 'Item 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 176, 7, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/inventory.svg',
                      width: 60,
                      height: 60,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text("Inventory",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context, 'Tools', ['Tool 1', 'Tool 2', 'Tool 3']);
              },
              child: Container(
                width: 90,
                height: 65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 102, 39, 8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sheet_icons/tools.svg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(150, 0, 0, 0),
                          BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text("Tools",
                style: GoogleFonts.almendra(
                    textStyle: const TextStyle(
                        fontSize: 15, color: Colors.white, height: 1))),
          ],
        ),
      ],
    );
  }
}
