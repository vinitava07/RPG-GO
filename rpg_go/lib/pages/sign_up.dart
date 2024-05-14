import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/components/text_field.dart';
import 'package:rpg_go/models/User.dart';
import 'package:rpg_go/pages/home_revival.dart';
import 'package:rpg_go/pages/login_page.dart';
import 'package:rpg_go/models/globals.dart' as globals;  
import 'package:http/http.dart' as http;

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  User? user;
  final _controllerName = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerConfirmPassword = TextEditingController();

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
                const Text('Bem-vindo ao RPG:GO!',
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
                    "Username",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MyTextField(
                  controller: _controllerName, hint_text: "Username",
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0), // Adiciona padding de 16 pixels à esquerda
                  child: const Text(
                    "Senha",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MyPasswordField(
                  controller: _controllerPassword,
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0), // Adiciona padding de 16 pixels à esquerda
                  child: const Text(
                    "Senha novamente",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MyPasswordField(
                  controller: _controllerConfirmPassword,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 3),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: const Text('Já tenho uma conta',
                              style: TextStyle(color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 3),
                      child: ElevatedButton(
                          onPressed: () async {
                            if (fieldCheck()) {
                              if (await signUpUser(_controllerName.text,
                                  _controllerPassword.text)) {
                                await Future.delayed(const Duration(milliseconds: 300));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomeRevival()));
                              } else {
                                print("usuario ja existe");
                              }
                            }
                          },
                          child: const Text('Cadastro',
                              style: TextStyle(color: Colors.black))),
                    )
                  ],
                )
              ],
            )),
          )),
        ));
  }

  bool fieldCheck() {
    bool canClick = false;
    if (_controllerConfirmPassword.text.compareTo(_controllerPassword.text) !=
        0) {
      print("SENHAS DIFERENTES");
      return canClick;
    } else if (_controllerName.text == "" || _controllerPassword.text == "") {
      print("Os campos nao podem estar vazios");
      return canClick;
    }
    canClick = true;
    return canClick;
  }

  Future<bool> signUpUser(String name, String password) async {
    final response = await http.post(
      Uri.parse("${dotenv.env['API_URL']!}user"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      print(response.body);
      globals.loggedUser = User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      return true;
    } else {
      throw Exception('Requisition Failed - Login.');
      return false;
    }
  }
}
