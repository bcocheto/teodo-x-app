import 'package:teodolito/app/database/database.config.dart';
import 'package:sqflite/sqflite.dart';
import 'package:teodolito/app/models/project_group.model.dart';

class ProjectGroupController {
  DatabaseConfig databaseConfig = DatabaseConfig();

  Future<List<ProjectGroup>> index() async {
    Database db = await databaseConfig.getDatabase();
    List<Map<String, dynamic>> maps =
        await db.query('projects_group', orderBy: 'id ASC');

    return List.generate(maps.length, (index) {
      return ProjectGroup(
        id: maps[index]['id'],
        project_group_title: maps[index]['project_group_title'],
        description: maps[index]['description'],
      );
    });
  }

  Future<bool> store(ProjectGroup projectGroup) async {
    Database db = await databaseConfig.getDatabase();
    bool success = false;

    try {
      await db.insert('projects_group', projectGroup.toMap());
      success = true;
    } catch (e) {
      success = false;
    }
    return success;
  }

  Future delete(int projectGroupId) async {
    Database db = await databaseConfig.getDatabase();

    await db
        .delete('projects_group', where: 'id=?', whereArgs: [projectGroupId]);
  }
}
