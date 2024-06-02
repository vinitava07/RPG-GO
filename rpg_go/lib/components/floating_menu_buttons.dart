import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:rpg_go/pages/qr_scan.dart';
//import 'package:rpg_go/pages/master_room.dart';
import 'package:rpg_go/pages/table_creation.dart';
import 'package:rpg_go/pages/select_sheet.dart';

class FloatMasterButton extends StatefulWidget {
  const FloatMasterButton({super.key});

  @override
  State<FloatMasterButton> createState() => _FloatMasterButtonState();
}

class _FloatMasterButtonState extends State<FloatMasterButton> {
  Color mainColor = const Color.fromRGBO(0, 75, 91, 1);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: mainColor,
      onPressed: () => showPopover(
          width: 300,
          height: 150,
          context: context,
          backgroundColor: mainColor,
          bodyBuilder: (context) => const Column(
                children: [
                  Text(
                    "EU SOU:",
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'Revol', color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MasterButton(),
                      SizedBox(
                        width: 50,
                      ),
                      PlayerButton()
                    ],
                  ),
                ],
              )),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100)),
      child: const Icon(
        Icons.add,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}

class PlayerButton extends StatelessWidget {
  const PlayerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SelectSheet()));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Column(
        children: [
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Jogador",
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Revol'),
            ),
          ),
        ],
      ),
    );
  }
}

class MasterButton extends StatelessWidget {
  const MasterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TableCreation()));
        },
        child: const Column(
          children: [
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              "Mestre",
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Revol'),
            ),
          ],
        ));
  }
}
