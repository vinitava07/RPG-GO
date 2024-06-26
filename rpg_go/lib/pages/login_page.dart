import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rpg_go/components/text_field.dart';
import 'package:rpg_go/models/sqlite_model.dart';
import 'package:rpg_go/pages/home_revival.dart';
import 'package:rpg_go/pages/loading_page.dart';
import 'package:rpg_go/pages/sign_up.dart';
import 'package:rpg_go/models/User.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rpg_go/models/globals.dart' as globals;
import 'package:sqflite/sqflite.dart';

class LoginPage extends StatefulWidget{
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  User? user;
  final _controllerName = TextEditingController();
  final _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(35, 37, 38, 1),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: isLoading ? LoadingPage() :(Column(
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
                MyTextField(controller: _controllerName, hint_text: 'Username'),
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
                MyPasswordField(controller: _controllerPassword),
                const SizedBox(height: 50),
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
                                    builder: (context) => SignUpPage()));
                          },
                          child: const Text('Não tenho Conta',
                              style: TextStyle(color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75, top: 3),
                      child: ElevatedButton(
                          onPressed: () async {
                            setState(() => isLoading = true);
                            if (await loginUser(_controllerName.text,
                                _controllerPassword.text)) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeRevival()));
                            } else {
                              print("ERRO");
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Login Failed'),
                                    content: const Text(
                                        'Invalid username or password.'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            setState(() => isLoading = false);
                          },
                          child: const Text('Login',
                              style: TextStyle(color: Colors.black))),
                    )
                  ],
                )
              ],
            )),
            ),
          ),
        ));
  }

  Future<bool> loginUser(String name, String password) async {
    final response = await http.post(
      Uri.parse("${dotenv.env['API_URL']!}user/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // print(response.body);
      globals.loggedUser = User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      Database db = await SQLiteModel.instance.database;
      // print('senha: ${globals.loggedUser.password}');
      await db.insert('user', {
        'name': globals.loggedUser.name,
        'password': globals.loggedUser.password});  //insert to local database
      List<Map<String, dynamic>> userRows = await db.query('user');
      int savedId= userRows.first['id'];
      String savedName = userRows.first['name'];
      String savedPassword = userRows.first['password'] ?? '';
      // print('$savedName is logged with id: $savedId and password: $password on local DataBase!');
      return true;
    } else {
      throw Exception('Requisition Failed - Login.');
    }
  }
}

class MyPasswordField extends StatefulWidget {
  final TextEditingController controller;

  const MyPasswordField({required this.controller});

  @override
  _MyPasswordFieldState createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          hintText: 'Senha',
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
