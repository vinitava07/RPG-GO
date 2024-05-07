import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class SQLiteModel{
  SQLiteModel._();//construtor privado

  static final SQLiteModel instance = SQLiteModel._();

  static Database? _database;

  get database async{
    if(_database != null){
      return _database;
    } else {
      return await _initDatabase();
    }
  }

  _initDatabase() async{
    return await openDatabase(
      join(await getDatabasesPath(), 'rpg.db'),
      version: 1,
      onCreate: _onCreate,
      //onUpgrade: _onUpgrade,
    );
  }

  _onCreate(db, versao) async{
    await db.execute(_user);
    // await db.execute(_table);
    // await db.execute(_room);
    // await db.execute(_sheets);
  }

    //_onUpgrade() async{
    
  //}

  String get _user => '''
    CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      password TEXT
    );
  ''';
  // String get _table => '''
  //   CREATE TABLE table (
  //     id INTEGER PRIMARY KEY AUTOINCREMENT,
  //     name TEXT,
  //     FOREIGN KEY (master_id) REFERENCES user(id)
  //   );
  // ''';
  // String get _room => '''
  //   CREATE TABLE room (
  //     id INTEGER PRIMARY KEY AUTOINCREMENT,
  //     FOREIGN KEY (table_id) REFERENCES table(id),
  //     FOREIGN KEY (sheet_id) REFERENCES sheet(id)
  //   );
  // ''';
  // String get _sheets => '''
  //   CREATE TABLE sheet (
  //     id INTEGER PRIMARY KEY AUTOINCREMENT,
  //     name TEXT,
  //     class TEXT,
  //     race TEXT,
  //     p_level TEXT,
  //     spells TEXT,
  //     FOREIGN KEY (user_id) REFERENCES user(id)
  //   );
  // ''';
}