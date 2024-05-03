import 'package:flutter/material.dart';
import 'package:rpg_go/components/text_field.dart';
import 'package:rpg_go/pages/home_revival.dart';
import 'package:rpg_go/pages/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
            child: (Column(
              children: [
                const SizedBox(height: 50),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: const BorderRadius.all(
                          Radius.circular(20)), // raio dos cantos
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // cor da sombra
                          spreadRadius: 1, // raio de espalhamento
                          blurRadius: 0.5, // raio de desfoque
                          offset: const Offset(0, 1), // deslocamento da sombra
                        ),
                      ],
                    ),
                    child: Image.asset('assets/images/logo.png')),
                const SizedBox(height: 50),
                const Text('Welcome to RPG:GO!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Revol')),
                const SizedBox(height: 50),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0), // Adiciona padding de 16 pixels à esquerda
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const MyTextField(),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0), // Adiciona padding de 16 pixels à esquerda
                  child: const Text(
                    "Password",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const MyTextField(),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 25, top: 3),
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: const Text('Não tenho Conta', style: TextStyle(color: Colors.black))),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 120, top: 3),
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeRevival(null)));
                    },
                    child: const Text('Login', style: TextStyle(color: Colors.black))),
                    )
                ],)
              ],
            )),
          )),
        ));
  }
}
