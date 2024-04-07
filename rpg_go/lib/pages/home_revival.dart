import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';

class HomeRevival extends StatefulWidget {
  final List<RoomTile>? salas;
  const HomeRevival(List<RoomTile>? s, {super.key}) : salas = s;

  @override
  State<HomeRevival> createState() => _HomeRevivalState();
}

class _HomeRevivalState extends State<HomeRevival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const RoomHeader("Minhas Salas"),
              Expanded(
                child: ListView(
                  children: const [
                    RoomTile("Nome da Sala", "Jogador"),
                    RoomTile("Aventura 1", "Jogador"),
                    RoomTile("Aventura 2", "Mestre"),
                    RoomTile("Aventura 3", "Jogador"),
                    RoomTile("Aventura 4", "Jogador"),
                    RoomTile("Aventura 5", "Mestre"),
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
}
