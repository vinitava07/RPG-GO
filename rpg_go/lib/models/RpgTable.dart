import 'package:rpg_go/models/Room.dart';

class RpgTable {
  int id;
  String name;
  List<Room>? rooms = [];
  int masterId;

  RpgTable({
    required this.id,
    required this.name,
    this.rooms,
    required this.masterId,
  });

  RpgTable.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        rooms = json['rooms'] != null
            ? List<dynamic>.from(json['rooms'])
                .map((i) => Room.fromJson(i))
                .toList()
            : List.empty(),
        masterId = json['masterId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'rooms': rooms,
        'masterId': masterId,
      };
}
