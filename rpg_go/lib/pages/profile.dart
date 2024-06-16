import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/pages/login_page.dart';
import 'package:rpg_go/pages/profile_settings.dart';
import 'package:rpg_go/pages/edit_sheet_page.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:http/http.dart' as http;

import '../models/User.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<PlayerTile>? sheetList = [];
  @override
  Widget build(BuildContext context) {
    sheetList = [];
    sheetToTile();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const RoomHeader("Meu Perfil"),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 80,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 100),
                                child: Text(
                                  "Olá, ${globals.loggedUser.name}!",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: 'Revol'),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(228, 4, 53, 56)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileSettings()));
                                },
                                onLongPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginPage()));
                                },
                                child: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 100, bottom: 50, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NewSheetButton(
                              text: "Nova Ficha",
                              symbol: Icons.add,
                              color: const Color.fromARGB(227, 4, 163, 102)),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(226, 6, 218, 211)),
                            onPressed: () async {
                              updateSheets();
                            },
                            child: const Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 150, bottom: 40, left: 10, right: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(50, 97, 121, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ListView.builder(
                        itemCount: sheetList!.length,
                        itemBuilder: (context, index) {
                          return sheetList![index];
                        },
                        //physics: const BouncingScrollPhysics(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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

  void sheetToTile() {
    for (var sheet in globals.loggedUser.sheets!) {
      sheetList?.add(PlayerTile(sheet.name, sheet.id, globals.loggedUser.id));
    }
  }

  Future<void> updateSheets() async {
    var url = Uri.parse('${dotenv.env['API_URL']}/user/${globals.loggedUser.id}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var user = User.fromJson(jsonDecode(response.body));
      globals.loggedUser = user;
      setState(() {
        sheetList = [];
        sheetToTile();
      });
    }
  }
}

class NewSheetButton extends StatelessWidget {
  String text = "";
  IconData symbol;
  Color color;

  NewSheetButton(
      {super.key,
      required this.text,
      required this.symbol,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: () async {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditSheetPage(false, globals.loggedUser.id)));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
              style: const TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: 'Revol')),
          const SizedBox(
            width: 5,
          ),
          Icon(
            symbol,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
