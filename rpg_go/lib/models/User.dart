import 'package:rpg_go/models/Table.dart';
import 'package:rpg_go/models/Room.dart';
import 'package:rpg_go/models/Sheet.dart';

class User {
  final int id;
  final String name;
  final String password;
  final List<Sheet>? sheets;
  final List<Table>? tables;
  final List<Room>? rooms;

  const User({
    required this.id,
    required this.name,
    required this.password,
    this.sheets,
    this.tables,
    this.rooms,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final sheets =
        List<Sheet>.from(json['sheets']?.map((sheet) => Sheet.fromJson(sheet)));
    const tables = null;
    if (json['tables'] != null) {
    final tables = List<Table>.from(
          json['tables']?.map((table) => Table.fromJson(table)));
    } 
    final rooms =
        List<Room>.from(json['rooms']?.map((room) => Room.fromJson(room)));
    return User(
      id: json['id'],
      name: json['name'],
      password: json['password'],
      rooms: rooms,
      sheets: sheets,
      tables: tables,
    );
  }
}
