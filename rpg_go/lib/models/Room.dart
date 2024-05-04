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

  factory Room.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'tableName': String tableName,
        'sheetName': String sheetName,
        'tableId': int tableId,
        'sheetId': int sheetId,
        'userId': int userId,
      } =>
        Room(
          id: id,
          tableName: tableName,
          sheetName: sheetName,
          tableId: tableId,
          sheetId: sheetId,
          userId: userId,
        ),
      _ => throw const FormatException('Failed to load Room.'),
    };
  }
}

