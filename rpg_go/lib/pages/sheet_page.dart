import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/sheet_head.dart';
import 'package:rpg_go/components/sheet_stats.dart';
import 'package:rpg_go/components/sheet_attributes.dart';
import 'package:rpg_go/components/sheet_options.dart';
import 'package:rpg_go/models/Sheet.dart';
import 'package:rpg_go/models/User.dart';
import 'package:rpg_go/pages/edit_sheet_page.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:rpg_go/pages/home_revival.dart';
import 'package:http/http.dart' as http;

enum ButtonType {
  addSheet,
  editSheet;
}

class SheetPage extends StatelessWidget {
  final int sheetId;
  final ButtonType bt;
  final int? tableId;

  const SheetPage(
      {super.key, required this.sheetId, required this.bt, this.tableId});

  @override
  Widget build(BuildContext context) {
    int sheetIndex = 0;
    for (Sheet sheet in globals.loggedUser.sheets!) {
      if (sheet.id == sheetId) {
        break;
      }
      sheetIndex++;
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 370,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20), // raio dos cantos
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
                ),
                child: SheetHead(sheetIndex),
              ),
              const SizedBox(height: 20),
              Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20), // raio dos cantos
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
                ),
                child: const SheetStats(),
              ),
              const SizedBox(height: 20),
              Container(
                width: 370,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20), // raio dos cantos
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // cor da sombra
                      spreadRadius: 1, // raio de espalhamento
                      blurRadius: 0.5, // raio de desfoque
                      offset: const Offset(0, 1), // deslocamento da sombra
                    ),
                  ],
                ),
                child: const SheetAttributes(),
              ),
              const SizedBox(height: 20),
              Container(
                  width: 370,
                  height: 290,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // raio dos cantos
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // cor da sombra
                        spreadRadius: 1, // raio de espalhamento
                        blurRadius: 0.5, // raio de desfoque
                        offset: const Offset(0, 1), // deslocamento da sombra
                      ),
                    ],
                  ),
                  child: const Center(
                    child: SheetOptions(),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 3),
                    child: bt == ButtonType.editSheet
                        ? ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditSheetPage(true)));
                            },
                            child: const Text('EDIT'))
                        : ElevatedButton(
                            onPressed: () async {
                              if (await createRoom()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeRevival()));
                              } else {
                                print("DEU PRA CONECTA NAUM");
                              }
                            },
                            child: const Text('SELECT SHEET')),
                  )
                ],
              )
            ],
          )),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatMasterButton(),
      bottomNavigationBar: const SizedBox(
        width: 50,
        child: BottomNavBar(),
      ),
    );
  }

  Future<bool> createRoom() async {
    final response = await http.post(
      Uri.parse(
          "${dotenv.env['API_URL']!}room?table_id=$tableId&user_id=${globals.loggedUser.id}&sheet_id=$sheetId"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{}),
    );
    if (response.statusCode == 201) {
      var url =
          Uri.parse('${dotenv.env['API_URL']}/user/${globals.loggedUser.id}');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var user = User.fromJson(jsonDecode(response.body));
        globals.loggedUser = user;
      } else {
        print("ERROOOOO");
      }
      return true;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Requisition Failed - CREATING ROOM.');
    }
  }
}
