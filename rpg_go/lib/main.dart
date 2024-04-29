import 'package:flutter/material.dart';
import 'package:rpg_go/pages/home_revival.dart';
// import 'package:rpg_go/pages/login_page.dart';
import 'package:rpg_go/pages/master_room.dart';
import 'package:rpg_go/pages/profile.dart';

//import 'pages/attack_page.dart';
//import 'package:rpg_go/pages/sheet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Profile(),
      routes: {
        '/home_revival': (context) => const HomeRevival(null),
        '/master_room': (context) => const MasterRoom(),
      },
    );
  }
}
