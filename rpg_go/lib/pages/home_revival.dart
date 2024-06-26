import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/components/room_tile.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:rpg_go/pages/loading_page.dart';

class HomeRevival extends StatefulWidget {
  HomeRevival({super.key});

  @override
  State<HomeRevival> createState() => _HomeRevivalState();
}

class _HomeRevivalState extends State<HomeRevival> {
  bool isLoading = false;
  List<RoomTile>? roomList = [];
  int listSize = 0;
  @override
  Widget build(BuildContext context) {
    roomList = [];
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
                        return roomList![index];
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
    int index = 0;
    for (var room in globals.loggedUser.rooms!) {
      roomList?.add(RoomTile(room.tableName, index, "Jogador"));
      index++;
    }
    listSize = roomList!.length;
    for (var table in globals.loggedUser.tables!) {
      roomList?.add(RoomTile(table.name, index - listSize, "Mestre"));
      index++;
    }
  }
}
