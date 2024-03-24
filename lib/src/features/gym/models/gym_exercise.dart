class GymExercise {
  final int id;
  final String movement;

  final String createdAt;
  final String? updatedAt;
  GymExercise({
    required this.id,
    required this.movement,
    required this.createdAt,
    this.updatedAt,
  });

  factory GymExercise.fromSqfliteDatabase(Map<String, dynamic> map) =>
      GymExercise(
        id: map['id']?.toInt() ?? 0,
        movement: map['movement'] ?? '',
        createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'])
            .toIso8601String(),
        updatedAt: map['updated_at'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(map['updated_at'])
                .toIso8601String(),
      );
}
