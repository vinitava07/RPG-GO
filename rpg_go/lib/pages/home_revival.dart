import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';
import 'package:rpg_go/models/User.dart';

class HomeRevival extends StatefulWidget {
  User? user;
  HomeRevival(User? u, {super.key}) : user = u;

  @override
  State<HomeRevival> createState() => _HomeRevivalState(user);
}

class _HomeRevivalState extends State<HomeRevival> {
  User? user;
  List<RoomTile>? roomList;
  List<RoomTile>? tableList;

  _HomeRevivalState(User? u) : user = u;

  @override
  Widget build(BuildContext context) {
    roomToTile();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const RoomHeader("Minhas Salas"),
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 500),
                        child: Image.asset("assets/images/main_background.png",
                            fit: BoxFit.scaleDown,
                            height: double.infinity,
                            width: double.infinity),
                      ),
                    ),
                    ListView.builder(
                      itemCount: roomList!.length,
                      itemBuilder: (context, index) {
                        return roomList!.elementAt(index);
                      },
                      //physics: const BouncingScrollPhysics(),
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

  void roomToTile() {
    for (var room in user!.rooms!) {
      roomList?.add(RoomTile(room.tableName, "Jogador"));
    }
    for (var table in user!.tables!) {
      tableList?.add(RoomTile(table.name, "Mestre"));
    }
  }
}
