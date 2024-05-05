import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetStats extends StatelessWidget {
  const SheetStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStatColumn("CA", "16", 0.7),
        const SizedBox(width: 30),
        _buildStatColumn("Movement", "30", 0.5),
        const SizedBox(width: 30),
        _buildHPColumn(),
      ],
    );
  }

  Widget _buildStatColumn(String title, String value, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
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
            children: const [
              Text(
                "10/10",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
