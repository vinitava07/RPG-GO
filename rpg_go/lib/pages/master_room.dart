import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rpg_go/models/Room.dart';
import 'package:http/http.dart' as http;
import 'package:rpg_go/models/RpgTable.dart';

class MasterRoom extends StatefulWidget {
  int roomId;
  String tableName = "";
  MasterRoom({required String name, required int id, super.key})
      : roomId = id,
        tableName = name;

  @override
  State<MasterRoom> createState() => _MasterRoomState();
}

class _MasterRoomState extends State<MasterRoom> {
  List<PlayerTile> players = [];
  @override
  void initState() {
    super.initState();
    getPlayers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RoomHeader(widget.tableName),
              const Text("Fichas da mesa:",
                  style: TextStyle(
                      color: Colors.white, fontSize: 32, fontFamily: 'Revol')),
              Expanded(
                child: ListView.builder(
                  itemCount: players!.length,
                  itemBuilder: (context, index) {
                    return players![index];
                  },
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

  Future<void> getPlayers() async {
    var url = Uri.parse('${dotenv.env['API_URL']}/table/${widget.roomId}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      RpgTable rpgTable = RpgTable.fromJson(jsonDecode(response.body));
      roomToPlayerTile(rpgTable.rooms);
    } else {
      throw Exception("a");
    }
  }

  void roomToPlayerTile(List<Room>? rooms) {
    setState(() {
      for (var room in rooms!) {
        players.add(PlayerTile(room.sheetName, room.sheetId, room.userId));
      }
    });
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
            child: SizedBox(
              width: 200,
              height: 200,
              child:                 QrImageView(
                  data: widget.roomId.toString(), //qr code info
                  version: QrVersions.auto,
                  // size: 120.0,
                ),
                // Text('This is a demo alert dialog.'),
                // Text('Would you like to approve of this message?'),
              
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
