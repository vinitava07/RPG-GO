import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetHead extends StatelessWidget {
  const SheetHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildProfileImage(),
        const SizedBox(width: 10),
        _buildInfoColumn(),
        const SizedBox(width: 70),
        _buildLevelContainer(),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 195, 194, 194),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Jilvio Samil",
          style: GoogleFonts.almendra(
            textStyle: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        _buildInfoText("Class"),
        _buildInfoText("Race"),
      ],
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: GoogleFonts.almendra(
        textStyle: const TextStyle(fontSize: 17, color: Colors.white, height: 1),
      ),
    );
  }

  Widget _buildLevelContainer() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 195, 194, 194),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Level",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "1",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 28, height: 1),
          ),
        ],
      ),
    );
  }
}
