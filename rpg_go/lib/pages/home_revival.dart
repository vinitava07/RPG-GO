import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';

class HomeRevival extends StatelessWidget {
  List<RoomTile>? salas = null;
  HomeRevival(List<RoomTile>? s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 3),
            borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      bottomNavigationBar: SizedBox(width: 50, child: BottomNavBar()),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
