import 'package:flutter/material.dart';
import 'package:rpg_go/components/bottom_nav_bar.dart';
import 'package:rpg_go/components/floating_menu_buttons.dart';
import 'package:rpg_go/components/room_header.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const RoomHeader("Config Profile"),
                Stack(
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "HELLO *FULANO*",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Revol'),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Username",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Revol'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 300,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText:
                                  'Fulano de Tal', //se usuario existente, aparece o nome atual
                              hintStyle: TextStyle(fontFamily: "Revol"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white38),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Revol'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 300,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText:
                                  '******', //se usuario existente, aparece o nome atual
                              hintStyle: TextStyle(fontFamily: "Revol"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white38),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Repeat password",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Revol'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 300,
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText:
                                  '******', //se usuario existente, aparece o nome atual
                              hintStyle: TextStyle(fontFamily: "Revol"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white38),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
