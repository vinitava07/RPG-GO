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

class EditSheetPage extends StatefulWidget {
  final bool isEditing;
  final Sheet? sheet;
  final int userId;
  // final _controllerSpells = TextEditingController();

  const EditSheetPage(this.isEditing, this.userId, {this.sheet, super.key});

  @override
  State<EditSheetPage> createState() => _EditSheetPageState();
}

class _EditSheetPageState extends State<EditSheetPage> {
  bool loading = false;

  late final Sheet sheet;

  @override
  void initState() {
    super.initState();
    if(widget.sheet != null) {
      sheet = widget.sheet!;
    } else {
      sheet = Sheet(id: -1, name: '', playerClass: '', race: '', level: 0, spells: '');
    }
  }

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
                child: EditSheetHead(sheet),
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
                child: EditSheetStats(sheet),
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
                child: EditSheetAttributes(sheet),
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
                        onPressed: () {
                          if (widget.isEditing) {
                            setState(() {
                              loading = true;
                            });

                            updateSheet(widget.userId).then((value) {
                              if (value) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return SheetPage(
                                    sheetId: sheet.id,
                                    userId: widget.userId,
                                    bt: ButtonType.editSheet,
                                  );
                                }));
                              }
                            });
                          } else {
                            createSheet(sheet);
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Profile();
                            }));
                          }
                        },
                        child: loading ? const CircularProgressIndicator() :const Text('SAVE')),
                  )
                ],
              )
            ],
          )),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatMasterButton(),
      bottomNavigationBar: const SizedBox(
        width: 50,
        child: BottomNavBar(),
      ),
    );
  }

  Future<bool> updateSheet(int userId) async {
    final response = await http.put(
      Uri.parse("${dotenv.env['API_URL']!}sheet?user_id=$userId"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(sheet.toJson(withId: true)),
    );
    return response.statusCode == 201;
  }

  Future<bool> createSheet(Sheet sheet) async {
    final response = await http.post(
      Uri.parse("${dotenv.env['API_URL']!}sheet?user_id=${globals.loggedUser.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(sheet.toJson(withId: false)),
    );

    if (response.statusCode == 201) {
      // then parse the JSON.
      return true;
    } else {
      // then throw an exception.
      throw Exception('Requisition Failed - Create Sheet.');
    }
  }
}
