import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';

class SheetAttributes extends StatelessWidget {
  final Sheet sheet;
  const SheetAttributes(this.sheet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAttributeColumn([
          Attribute(name: "STR", value: sheet.strength.toString()),
          Attribute(name: "DEX", value: sheet.dexterity.toString())
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "CON", value: sheet.constitution.toString()),
          Attribute(name: "INT", value: sheet.intelligence.toString())
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "WIS", value: sheet.wisdom.toString()),
          Attribute(name: "CHA", value: sheet.charisma.toString())
        ]),
      ],
    );
  }

  Widget _buildAttributeColumn(List<Attribute> attributes) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: attributes
          .map((attribute) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  width: 80,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(35, 37, 38, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        attribute.name,
                        style: GoogleFonts.almendra(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.white)),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        attribute.value,
                        style: GoogleFonts.almendra(
                            textStyle: const TextStyle(
                                fontSize: 25, color: Colors.white, height: 1)),
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class Attribute {
  final String name;
  final String value;

  Attribute({required this.name, required this.value});
}
