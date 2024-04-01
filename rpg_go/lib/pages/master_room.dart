import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';

class MasterRoom extends StatelessWidget {
  const MasterRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoomHeader("Nome do RPG"),
              const Text("Fichas da mesa:",
                  style: TextStyle(
                      color: Colors.white, fontSize: 32, fontFamily: 'Revol')),
              Expanded(
                child: ListView(
                  children: [
                    PlayerTile("name"),
                    PlayerTile("name"),
                    PlayerTile("name"),
                    PlayerTile("name"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: masterRoomButton(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  FloatingActionButton masterRoomButton() {
    return FloatingActionButton(
      onPressed: () {
        //print("oi");
      },
      backgroundColor: const Color.fromRGBO(0, 75, 91, 1),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100)),
      child: const Icon(
        Icons.qr_code,
        color: Colors.white,
      ),
    );
  }
}
