import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetAttributes extends StatelessWidget {
  const SheetAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAttributeColumn([
          Attribute(name: "STR", value: "9(-1)"),
          Attribute(name: "DEX", value: "12(+1)")
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "CON", value: "11(0)"),
          Attribute(name: "INT", value: "15(+2)")
        ]),
        const SizedBox(width: 30),
        _buildAttributeColumn([
          Attribute(name: "WIS", value: "12(+1)"),
          Attribute(name: "CHA", value: "15(+2)")
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
                      SizedBox(height: 5),
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
