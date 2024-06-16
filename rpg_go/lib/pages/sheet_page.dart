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

class SheetPage extends StatefulWidget {
  final int sheetId;
  final ButtonType bt;
  final int? tableId;
  final int userId;

  const SheetPage(
      {super.key, required this.sheetId, required this.bt, this.tableId, required this.userId});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {

  bool isLoading = true;
  late final Sheet sheet;

  @override
  void initState() {
    super.initState();
    getSheet();
  }

  void getSheet() async {
    final response = await http.get(
      Uri.parse(
          "${dotenv.env['API_URL']!}sheet/${widget.sheetId}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      sheet = Sheet.fromJson(jsonDecode(response.body));
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Requisition Failed - GET SHEET.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: isLoading ? const CircularProgressIndicator() :Column(
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
                child: SheetHead(sheet),
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
                child: SheetStats(sheet),
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
                child: SheetAttributes(sheet),
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
                    child: widget.bt == ButtonType.editSheet
                        ? ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditSheetPage(true, widget.userId, sheet: sheet)));
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
          ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatMasterButton(),
      bottomNavigationBar: const SizedBox(
        width: 50,
        child: BottomNavBar(),
      ),
    );
  }

  Future<bool> createRoom() async {
    final response = await http.post(
      Uri.parse(
          "${dotenv.env['API_URL']!}room?table_id=${widget.tableId}&user_id=${globals.loggedUser.id}&sheet_id=${widget.sheetId}"),
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
