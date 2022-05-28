import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConfig {
  Future<Database> getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'project_app_database.db'),
      onCreate: (db, version) async {
        await createTable(db);
      },
      onOpen: (db) {},
      onUpgrade: (db, oldVersion, newVersion) async {},
      onDowngrade: (db, oldVersion, newVersion) async {},
      version: 1,
    );
  }

  Future createTable(Database db) async {
    await db.execute(
        'CREATE TABLE IF NOT EXISTS projects (id INTEGER PRIMARY KEY,project_title TEXT NOT NULL,group_id INTEGER);');

    await db.execute(
        'CREATE TABLE IF NOT EXISTS height_initial (id INTEGER PRIMARY KEY,project_id INTEGER,value INTEGER);');

    await db.execute(
        'CREATE TABLE IF NOT EXISTS points (id INTEGER PRIMARY KEY,height INTEGER,angle INTEGER,fi INTEGER,fm INTEGER,fs INTEGER,point_v INTEGER,project_id INTEGER,result INTEGER);');

    await db.execute(
        'CREATE TABLE IF NOT EXISTS projects_group (id INTEGER PRIMARY KEY,project_group_title TEXT NOT NULL,description TEXT);');
  }
}
