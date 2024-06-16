import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg_go/models/Sheet.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:http/http.dart' as http;

class SheetHead extends StatelessWidget {
  final Sheet sheet;
  const SheetHead(this.sheet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildProfileImage(),
            const SizedBox(width: 10),
            _buildInfoColumn(),
          ],
        ),
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

  // FutureOr<Sheet> getSheet() async {
  //   var url = Uri.parse('${dotenv.env['API_URL']}/sheet/${sheetId}');
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     Sheet rpgTable = Sheet.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception("a");
  //   }
  // }

  Widget _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 140),
          child: Text(
            sheet.name,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Revol'),
            overflow: TextOverflow.fade,
          ),
        ),
        _buildInfoText("Class: ${sheet.playerClass}"), //${specificSheet}"),
        _buildInfoText("Race: ${sheet.race}"), //${specificSheet}"),
      ],
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: GoogleFonts.almendra(
        textStyle:
            const TextStyle(fontSize: 17, color: Colors.white, height: 1),
      ),
    );
  }

  Widget _buildLevelContainer() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF272d36),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Level",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "${sheet.level}",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 28, height: 1),
          ),
        ],
      ),
    );
  }
}
