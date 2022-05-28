import 'package:teodolito/app/database/database.config.dart';
import 'package:teodolito/app/models/point_model.dart';
import 'package:sqflite/sqflite.dart';

class PointController {
  DatabaseConfig databaseConfig = DatabaseConfig();

  Future<List<Point>> index() async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('points', orderBy: 'id ASC');

    return List.generate(maps.length, (index) {
      return Point(
        id: maps[index]['id'],
        pointV: maps[index]['point_v'],
        projectId: maps[index]['project_id'],
        result: maps[index]['result'],
      );
    });
  }

  Future<List<Point>> getPointsByProjectId(int projectId) async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps = await db
        .query('points', where: 'project_id = ?', whereArgs: [projectId]);
    print(maps);

    return List.generate(
      maps.length,
      (index) => Point(
        id: maps[index]['id'],
        pointV: maps[index]['point_v'],
        projectId: maps[index]['project_id'],
        result: maps[index]['result'],
      ),
    );
  }

  Future<bool> store(Point point) async {
    Database db = await databaseConfig.getDatabase();
    bool success = false;

    try {
      await db.insert('points', point.toMap());
      success = true;
      print(success);
    } catch (e) {
      success = false;

      print(e);
    }
    return success;
  }

  Future<int> update(Point point) async {
    Database db = await databaseConfig.getDatabase();
    return await db
        .update('points', point.toMap(), where: 'id=?', whereArgs: [point.id]);
  }

  Future delete(int pointId) async {
    Database db = await databaseConfig.getDatabase();

    await db.delete('points', where: 'id=?', whereArgs: [pointId]);
  }
}
