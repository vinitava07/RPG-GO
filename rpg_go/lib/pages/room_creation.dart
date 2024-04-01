import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';
import 'package:rpg_go/components/text_field.dart';

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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoomHeader("Config Table"),
              const SizedBox(height: 20),
              const MyTextField(),
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatMasterButton(),
      bottomNavigationBar: const SizedBox(width: 50, child: BottomNavBar(),),
    );
  }
}
