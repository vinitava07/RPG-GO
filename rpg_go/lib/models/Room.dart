class Room {
  final int id;
  final String tableName;
  final String sheetName;
  final int tableId;
  final int sheetId;
  final int userId;


  const Room({
    required this.id,
    required this.tableName,
    required this.sheetName,
    required this.tableId,
    required this.sheetId,
    required this.userId,
  });

  Room.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableName = json['tableName'],
        sheetName = json['sheetName'],
        tableId = json['tableId'],
        sheetId = json['sheetId'],
        userId = json['userId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableName': tableName,
        'sheetName': sheetName,
        'tableId': tableId,
        'sheetId': sheetId,
        'userId': userId,
      };
}

