import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/edit_sheet_attributes.dart';
import 'package:rpg_go/components/edit_sheet_head.dart';
import 'package:rpg_go/components/edit_sheet_options.dart';
import 'package:rpg_go/components/edit_sheet_stats.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/pages/profile.dart';
// import 'package:rpg_go/components/sheet_head.dart';
// import 'package:rpg_go/components/sheet_stats.dart';
// import 'package:rpg_go/components/sheet_attributes.dart';
// import 'package:rpg_go/components/sheet_options.dart';
import 'package:rpg_go/pages/sheet_page.dart';
import 'package:rpg_go/models/Sheet.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../models/globals.dart' as globals;

class EditSheetPage extends StatelessWidget {
  bool isEditing;
  final _controllerName = TextEditingController();
  final _controllerClass = TextEditingController();
  final _controllerRace = TextEditingController();
  final _controllerLevel = TextEditingController();
  // final _controllerSpells = TextEditingController();

  EditSheetPage(bool edit, {super.key}) : isEditing = edit;
  @override
  Widget build(BuildContext context) {
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
                child: EditSheetHead(
                    controllerName: _controllerName,
                    controllerClass: _controllerClass,
                    controllerLevel: _controllerLevel,
                    controllerRace: _controllerRace),
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
                child: const EditSheetStats(),
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
                child: const EditSheetAttributes(),
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
                    child: EditSheetOptions(),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 3),
                    child: ElevatedButton(
                        onPressed: () async {
                          if (isEditing) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            final sId =
                                0; // ou qualquer outra lógica para calcular sheetId
                            return SheetPage(sId, bt: ButtonType.editSheet,);
                          }));
                            //updateSheet();
                          } else {
                            createSheet();
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Profile();
                          }));
                          }
                        },
                        child: const Text('SAVE')),
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

  Future<bool> createSheet() async {
    final response = await http.post(
      Uri.parse(
          "${dotenv.env['API_URL']!}sheet?user_id=${globals.loggedUser.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': _controllerName.text,
        'playerClass': _controllerClass.text,
        'race': _controllerRace.text,
        'playerLevel': int.parse(_controllerLevel.text),
        'spells': 'Magias do Jogador'
      }),
    );

    if (response.statusCode == 201) {
      // then parse the JSON.
      print(response.body);
      return true;
    } else {
      // then throw an exception.
      throw Exception('Requisition Failed - Create Sheet.');
    }
  }
}
