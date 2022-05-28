import 'dart:core';

class HeightTotal {
  late final int? id;
  late final int? projectId;
  late final double? value;

  HeightTotal({
    this.id,
    this.projectId,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'project_id': projectId,
      'result': value,
    };
  }

  @override
  String toString() {
    return '''Point{
                id:$id,
                project_id:$projectId,
                result:$value
                }''';
  }
}
