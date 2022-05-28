import 'package:teodolito/app/database/database.config.dart';
import 'package:teodolito/app/models/project.model.dart';
import 'package:sqflite/sqflite.dart';

class ProjectController {
  DatabaseConfig databaseConfig = DatabaseConfig();

  Future<List<Project>> index() async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('projects', orderBy: 'id ASC');

    return List.generate(maps.length, (index) {
      return Project(
        id: maps[index]['id'],
        projectTitle: maps[index]['project_title'],
        groupId: maps[index]['group_id'],
      );
    });
  }

  Future<List<Project>> getProjectsByGroupId(int groupId) async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('projects', where: 'group_id = ?', whereArgs: [groupId]);

    return List.generate(
      maps.length,
      (index) => Project(
        id: maps[index]['id'],
        projectTitle: maps[index]['project_title'],
        groupId: maps[index]['group_id'],
      ),
    );
  }

  Future<bool> store(Project project) async {
    Database db = await databaseConfig.getDatabase();
    bool success = false;

    try {
      await db.insert('projects', project.toMap());
      success = true;
    } catch (e) {
      print(e);
      success = false;
    }
    return success;
  }

  Future<int> update(Project project) async {
    Database db = await databaseConfig.getDatabase();
    return await db.update('projects', project.toMap(),
        where: 'id=?', whereArgs: [project.id]);
  }

  Future delete(int projectId) async {
    Database db = await databaseConfig.getDatabase();

    await db.delete('projects', where: 'id=?', whereArgs: [projectId]);
  }
}
