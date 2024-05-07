import 'package:rpg_go/models/User.dart';
import 'package:rpg_go/models/sqlite_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:rpg_go/models/globals.dart' as globals;

class UserRepository{
  late Database db;
  User _user = globals.loggedUser;

  get user => _user;

  UserRepository(){
    _initRepository();
  }

  _initRepository() async{
    await _getUser();
  }

  _getUser() async{
    db = await SQLiteModel.instance.database;
    List conta = await db.query('user', limit: 1);
    _user = conta.first['user'];
  }
  _setUser() async{
    db = await SQLiteModel.instance.database;
    db.update('user', {
      'name': globals.loggedUser.name,
    });
    _user.name = globals.loggedUser.name;
  }
}