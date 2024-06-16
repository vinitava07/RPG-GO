import 'package:rpg_go/models/RpgTable.dart';
import 'package:rpg_go/models/Room.dart';
import 'package:rpg_go/models/Sheet.dart';

class User {
  int id;
  String name;
  String password;
  List<Sheet>? sheets = [];
  List<RpgTable>? tables = [];
  List<Room>? rooms = [];

  User(
    this.id,
    this.name,
    this.password,
    this.sheets,
    this.tables,
    this.rooms,
  );

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        password = json['password'],
        rooms = json['rooms'] != null
            ? List<dynamic>.from(json['rooms'])
                .map((i) => Room.fromJson(i))
                .toList()
            : List.empty(),
        tables = json["rpgTableList"] != null
            ? List<dynamic>.from(json['rpgTableList'])
                .map((i) => RpgTable.fromJson(i))
                .toList()
            : List.empty(),
        sheets = json["sheets"] != null
            ? List<dynamic>.from(json['sheets'])
                .map((i) => Sheet.fromJson(i))
                .toList()
            : List.empty();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'password': password,
        'rooms': rooms?.map((item) => item.toJson()).toList(),
        'rpgTableList': tables?.map((item) => item.toJson()).toList(),
        'sheets': sheets?.map((item) => item.toJson(withId: true)).toList(),
      };
}
