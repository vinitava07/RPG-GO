import 'package:rpg_go/models/Room.dart';

class Table {
  final int id;
  final String name;
  final List<Room>? rooms;
  final int masterId;

  const Table({
    required this.id,
    required this.name,
    this.rooms,
    required this.masterId,
  });

  factory Table.fromJson(Map<String, dynamic> json) {
    final rooms =
        List<Room>.from(json['rooms']?.map((room) => Room.fromJson(room)));
    return Table(
      id: json['id'],
      name: json['name'],
      rooms: rooms,
      masterId: json['masterId'],
    );
  }
}
