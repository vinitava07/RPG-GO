import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rpg_go/pages/master_room.dart';

class FloatMasterButton extends StatelessWidget {
  FloatMasterButton({super.key});
  Color mainColor = Color.fromRGBO(0, 75, 91, 1);

  final _overlayController = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: mainColor,
      onPressed: _overlayController.toggle,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(100)),
      child: OverlayPortal(
        controller: _overlayController,
        overlayChildBuilder: (BuildContext context) {
          return Positioned(
            bottom: 120,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(59, 66, 68, 1),
              ),
              child: Column(
                children: [
                  const Text(
                    "EU SOU:",
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'Revol', color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MasterRoom()));
                            ;
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
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Revol'),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
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
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Revol'),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
