import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/player_tile.dart';
import 'package:rpg_go/components/room_header.dart';
import 'package:rpg_go/pages/profile_settings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const RoomHeader("Meu Perfil"),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 80,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "HELLO *FULANO*",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Revol'),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(228, 4, 53, 56)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileSettings()));
                                },
                                child: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 100, bottom: 50, left: 10, right: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(50, 97, 121, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ListView(
                        //physics: const BouncingScrollPhysics(),
                        children: const [
                          PlayerTile("Roberto"),
                          PlayerTile("Jilvio Samil"),
                          PlayerTile("Saiu nota de grafos"),
                        ],
                      ),
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
}