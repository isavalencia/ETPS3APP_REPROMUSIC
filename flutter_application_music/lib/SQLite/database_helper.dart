import 'package:flutter_application_music/paginas/Model/user_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  final databaseName = "usuarios.db";
  String userTable =
      "create table users (userId integer primary key autoincrement, userName Text, userPassword Text)";
  String userData = "insert into users values(1,'flutter','123')";
  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);
    return await openDatabase(path, version: 1, onCreate: (db, version) async {
      //User table
      await db.execute(userTable);

      //Default user data for login
      await db.rawQuery(userData);
    });
  }

  //Authentication Method for login
  Future<bool> authentication(Users users) async {
    final Database db = await initDB();
    //var users;
    //var users;
    var result = await db.rawQuery(
        "select * from users where userName = '${users.userName}' and userPassword = '${users.userPassword}' ");

    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //Method for creating an account
  Future<int> createUsers(Users users) async {
    final db = await initDB();
    var result = db.insert('users', users.toMap());
    return result;
  }
}
