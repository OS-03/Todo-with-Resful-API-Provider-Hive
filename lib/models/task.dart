import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Task {
  @HiveField(0)
  final String? id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String status;

<<<<<<< HEAD
=======
  @HiveField(4)
  final String? imagePath;

  @HiveField(5)
  final int? createdAt;

  @HiveField(6)
  final String? category;

  @HiveField(7)
  final int? dueAt;

>>>>>>> 9d3504a (final files)
  Task({
    this.id,
    required this.title,
    required this.description,
    required this.status,
<<<<<<< HEAD
=======
    this.imagePath,
    this.createdAt,
    this.category,
    this.dueAt,
>>>>>>> 9d3504a (final files)
  });

  Task copyWith({
    String? id,
    String? title,
    String? description,
    String? status,
<<<<<<< HEAD
=======
    String? imagePath,
    int? createdAt,
    String? category,
    int? dueAt,
>>>>>>> 9d3504a (final files)
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
<<<<<<< HEAD
=======
      imagePath: imagePath ?? this.imagePath,
      createdAt: createdAt ?? this.createdAt,
      category: category ?? this.category,
      dueAt: dueAt ?? this.dueAt,
>>>>>>> 9d3504a (final files)
    );
  }

  bool get isCompleted => status == 'completada';
  bool get isPending => status == 'pendiente';

  // Convert from API JSON
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  // Convert to API JSON
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
