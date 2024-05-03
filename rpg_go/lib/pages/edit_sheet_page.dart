import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/edit_sheet_attributes.dart';
import 'package:rpg_go/components/edit_sheet_head.dart';
import 'package:rpg_go/components/edit_sheet_options.dart';
import 'package:rpg_go/components/edit_sheet_stats.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/sheet_head.dart';
import 'package:rpg_go/components/sheet_stats.dart';
import 'package:rpg_go/components/sheet_attributes.dart';
import 'package:rpg_go/components/sheet_options.dart';

class EditSheetPage extends StatelessWidget {
  const EditSheetPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // raio dos cantos
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // cor da sombra
                        spreadRadius: 1, // raio de espalhamento
                        blurRadius: 0.5, // raio de desfoque
                        offset: const Offset(0, 1), // deslocamento da sombra
                      ),
                    ],
                  ),
                  child: const EditSheetHead(),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 370,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // raio dos cantos
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // cor da sombra
                        spreadRadius: 1, // raio de espalhamento
                        blurRadius: 0.5, // raio de desfoque
                        offset: const Offset(0, 1), // deslocamento da sombra
                      ),
                    ],
                  ),
                  child: const EditSheetStats(),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 370,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // raio dos cantos
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // cor da sombra
                        spreadRadius: 1, // raio de espalhamento
                        blurRadius: 0.5, // raio de desfoque
                        offset: const Offset(0, 1), // deslocamento da sombra
                      ),
                    ],
                  ),
                  child: const EditSheetAttributes(),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 370,
                  height: 290,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20), // raio dos cantos
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // cor da sombra
                        spreadRadius: 1, // raio de espalhamento
                        blurRadius: 0.5, // raio de desfoque
                        offset: const Offset(0, 1), // deslocamento da sombra
                      ),
                    ],
                  ),
                  child: const Center(child: EditSheetOptions(),)
                ),
              ],
            )),
          )),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatMasterButton(),
      bottomNavigationBar: const SizedBox(width: 50, child: BottomNavBar(),),    
    );
  }
}
