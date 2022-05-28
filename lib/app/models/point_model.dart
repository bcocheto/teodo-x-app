import 'dart:core';

class Point {
  late final int? id;
  late final double? pointV;
  late final int? projectId;
  late final double? result;

  Point({
    this.id,
    this.pointV,
    this.projectId,
    this.result,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'point_v': pointV,
      'project_id': projectId,
      'result': result,
    };
  }

  @override
  String toString() {
    return '''Point{
                id:$id,
                point_v:$pointV,
                project_id:$projectId,
                result:$result
                }''';
  }
}
