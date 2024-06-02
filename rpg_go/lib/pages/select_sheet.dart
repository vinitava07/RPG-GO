import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/models/globals.dart' as globals;

class SelectSheet extends StatefulWidget {
  SelectSheet({
    super.key,
  });

  @override
  State<SelectSheet> createState() => _SelectSheetState();
}

class _SelectSheetState extends State<SelectSheet> {
  List<PlayerTile>? sheetList = [];

  @override
  Widget build(BuildContext context) {
    sheetList = [];
    sheetToTile();
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            const RoomHeader("Select a Sheet"),
            Expanded(
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
      floatingActionButton: const FloatMasterButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const SizedBox(
        width: 50,
        child: BottomNavBar(),
      ),
    );
  }

  void sheetToTile() {
    int index = 0;
    for (var sheet in globals.loggedUser.sheets!) {
      sheetList?.add(PlayerTile(sheet.name, index));
      index++;
    }
  }
}
