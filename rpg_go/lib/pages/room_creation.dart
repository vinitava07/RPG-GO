import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';
import 'package:rpg_go/components/text_field.dart';
import 'package:rpg_go/pages/master_room.dart';

class RoomCreation extends StatefulWidget {
  const RoomCreation({super.key});

  @override
  State<RoomCreation> createState() => _RoomCreationState();
}

class _RoomCreationState extends State<RoomCreation> {
  List<RoomTile>? salas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const RoomHeader("Configurar Sala"),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Nome da sala",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Revol'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Room Name',
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
                const SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Text(
                        "Número de\n jogadores",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Revol'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Room Size',
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
                        padding: EdgeInsets.only(right: 60, left: 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MasterRoom()));
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
}
