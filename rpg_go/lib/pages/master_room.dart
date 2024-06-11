import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MasterRoom extends StatelessWidget {
  int roomId;
  String tableName = "";
  MasterRoom({required String name, required int id, super.key})
      : roomId = id,
        tableName = name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoomHeader(tableName),
              const Text("Fichas da mesa:",
                  style: TextStyle(
                      color: Colors.white, fontSize: 32, fontFamily: 'Revol')),
              Expanded(
                child: ListView(
                  children: const [
                    PlayerTile("Jogador 1", 1),
                    PlayerTile("Jogador 2", 2),
                    PlayerTile("Jogador 3", 3),
                    PlayerTile("Jogador 4", 4),
                    PlayerTile("Jogador 5", 5),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: masterRoomButton(context),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  FloatingActionButton masterRoomButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _showMyDialog(context);
        //print("oi");
      },
      backgroundColor: const Color.fromRGBO(0, 75, 91, 1),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100)),
      child: const Icon(
        Icons.qr_code_scanner_sharp,
        color: Colors.white,
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('QR Code'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                QrImageView(
                  data: roomId.toString(), //qr code info
                  version: QrVersions.auto,
                  size: 200.0,
                ),
                // Text('This is a demo alert dialog.'),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
