import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';
import 'package:rpg_go/models/User.dart';
import 'package:rpg_go/pages/master_room.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:http/http.dart' as http;

class RoomCreation extends StatefulWidget {
  const RoomCreation({super.key});

  @override
  State<RoomCreation> createState() => _RoomCreationState();
}

class _RoomCreationState extends State<RoomCreation> {
  List<RoomTile>? salas;
  final _controllerName = TextEditingController();
  final _controllerPlayerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const RoomHeader("Config Table"),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const Text(
                        "Table name",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Revol'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _controllerName,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: 'eg. The Lost Mines of Phandelver',
                          hintStyle: TextStyle(fontFamily: "Revol"),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        cursorColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      const Text(
                        "Table Size",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Revol'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _controllerPlayerNumber,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: 'eg. 5',
                          hintStyle: TextStyle(fontFamily: "Revol"),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        cursorColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 75, 91, 1),
                        padding: const EdgeInsets.only(right: 60, left: 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      if (validField()) {
                        if (await createTable(_controllerName.text)) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MasterRoom()));
                        }
                      }
                    },
                    child: const Text('Confirmar',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Revol',
                            fontSize: 25))),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatMasterButton(),
      bottomNavigationBar: const SizedBox(
        width: 50,
        child: BottomNavBar(),
      ),
    );
  }

  bool validField() {
    if (_controllerName.text == "" || _controllerPlayerNumber.text == "") {
      print("Preencha todos os campos");
      return false;
    }

    return true;
  }

  Future<bool> createTable(String tableName) async {
    final response = await http.post(
      Uri.parse(
          "${dotenv.env['API_URL']!}table?master_id=${globals.loggedUser.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': tableName,
      }),
    );
    if (response.statusCode == 201) {
      updateUser();
      print(response.body);
      return true;
    } else {
      throw Exception('Requisition Failed - CREATING TABLE.');
      return false;
    }
  }

  Future<void> updateUser() async {
    var url =
        Uri.parse('${dotenv.env['API_URL']}/user/${globals.loggedUser.id}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var user = User.fromJson(jsonDecode(response.body));
      print(response.body);
      globals.loggedUser = user;
    } else {
      throw Exception('Requisition Failed - GET USER.');
    }
  }
}
