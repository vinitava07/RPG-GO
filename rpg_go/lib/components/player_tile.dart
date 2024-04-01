import 'package:flutter/material.dart';

class PlayerTile extends StatelessWidget {
  final String playerName;
  const PlayerTile(String name, {super.key}) : playerName = name;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(0, 75, 91, 0.9),
      child: ListTile(
        leading: const Icon(
          Icons.shield,
          size: 30,
          color: Colors.amber,
        ),
        title: Text(
          playerName,
          style: const TextStyle(
              fontSize: 20, fontFamily: 'Revol', color: Colors.white),
        ),
        dense: false,
        onTap: () {},
        contentPadding: const EdgeInsets.all(30),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {},
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
