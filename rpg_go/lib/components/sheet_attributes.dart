import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';

class SheetAttributes extends StatelessWidget {
  final Sheet sheet;
  const SheetAttributes(this.sheet, {super.key});

  int _calculateModifier(int abilityScore) {
    return ((abilityScore - 10) / 2).floor();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAttributeColumn([
          Attribute(name: "STR", value: sheet.strength),
          Attribute(name: "DEX", value: sheet.dexterity)
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "CON", value: sheet.constitution),
          Attribute(name: "INT", value: sheet.intelligence)
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "WIS", value: sheet.wisdom),
          Attribute(name: "CHA", value: sheet.charisma)
        ]),
      ],
    );
  }

  Widget _buildAttributeColumn(List<Attribute> attributes) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: attributes
          .map((attribute) {
            int modifier = _calculateModifier(attribute.value);
            String modifierText = (modifier >= 0) ? "+$modifier" : "$modifier";
            return Padding(
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
                      '${attribute.value} ($modifierText)',
                      style: GoogleFonts.almendra(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.white, height: 1)),
                    ),
                  ],
                ),
              ),
            );
          })
          .toList(),
    );
  }
}

class Attribute {
  final String name;
  final int value;

  Attribute({required this.name, required this.value});
}
