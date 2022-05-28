import 'dart:core';

class Project {
  late final int? id;
  late final String? projectTitle;
  late final int? groupId;

  Project({this.id, this.projectTitle, this.groupId});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'project_title': projectTitle,
      'group_id': groupId,
    };
  }

  @override
  String toString() {
    return 'Project{id:$id,project_title:$projectTitle,group_id:$groupId}';
  }
}
