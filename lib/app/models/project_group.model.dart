import 'dart:core';

class ProjectGroup {
  late final int? id;
  late final String? project_group_title;
  late final String? description;

  ProjectGroup({this.id, this.project_group_title, this.description});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'project_group_title': project_group_title,
      'description': description,
    };
  }

  @override
  String toString() {
    return '''ProjectGroup{
                            id: $id,
                            project_group_title: $project_group_title ,
                            description: $description
                          }''';
  }
}
