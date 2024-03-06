import 'package:flutter/material.dart';
import 'package:rpg_go/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Center(
          child: (Column(
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.shield_moon,
                size: 100,
                color: Colors.yellow,
              ),
              SizedBox(height: 50),
              Text('Bem vindo ao RPG:Go',
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: 'Revol')),
              SizedBox(height: 50),
              MyTextField(),
            ],
          )),
        )));
  }
}
