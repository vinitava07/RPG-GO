import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';

class HomeRevival extends StatelessWidget {
  List<RoomTile>? salas;
  HomeRevival(List<RoomTile>? s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoomHeader("Minhas Salas"),
              Expanded(
                child: ListView(
                  children: [
                    RoomTile(
                      "Nome da Sala",
                      "Jogador",
                    ),
                    RoomTile("nome", "situ"),
                    RoomTile("nome", "situ"),
                    RoomTile("nome", "situ"),
                    RoomTile("nome", "situ"),
                    RoomTile("nome", "situ"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatMasterButton(),
      bottomNavigationBar: const SizedBox(width: 50, child: BottomNavBar()),
    );
  }

  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
