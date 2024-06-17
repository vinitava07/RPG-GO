import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';
import 'package:rpg_go/models/globals.dart' as globals;

class SheetStats extends StatelessWidget {
  final Sheet sheet;
  const SheetStats(this.sheet,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildStatColumn("Class Armor", sheet.armorClass.toString(), 0.7),
        _buildStatColumn("Movement", sheet.movement.toString(), 0.5),
        _buildHPColumn(),
      ],
    );
  }

  Widget _buildStatColumn(String title, String value, double height) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.almendra(
            textStyle: const TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.almendra(
            textStyle: TextStyle(fontSize: 40, color: Colors.white, height: height),
          ),
        ),
      ],
    );
  }

  Widget _buildHPColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Text(
          "HP",
          style: GoogleFonts.almendra(
            textStyle: const TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
        Container(
          width: 150,
          height: 30,
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
    );
  }
}
