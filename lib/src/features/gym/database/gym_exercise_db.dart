import 'package:bugarin/src/features/gym/database/database_service.dart';
import 'package:bugarin/src/features/gym/models/gym_exercise.dart';
import 'package:sqflite/sqflite.dart';

class GymExerciseDB {
  final tableName = 'gym_exercises';

  Future<void> createTable(Database database) async {
    await database.execute("""CREATE TALBE IF NOT EXISTS $tableName (
      "id" INTEGER NOT NULL,
      "movement" TEXT NOT NULL,
      "created_at" INTEGER NOT NULL DEFAULT (cast(strftime('%s','now') as int
      "updated_at" INTEGER,
      PRIMARY KEY("id" AUTOINCREMENT)
      );""");
  }

  Future<int> create({required String movement}) async {
    final database = await DatabaseService().database;
    return await database.rawInsert(
      '''INSERT INTO $tableName (movement,created_at) VALUES (?,?)''',
      [movement, DateTime.now().millisecondsSinceEpoch],
    );
  }

  Future<List<GymExercise>> fetchAll() async {
    final database = await DatabaseService().database;
    final exercises = await database.rawQuery(
        '''SELECT * from $tableName ORDER BY COALESCE(updated_at,created_at)''');
    return exercises
        .map((gymExercise) => GymExercise.fromSqfliteDatabase(gymExercise))
        .toList();
  }

  Future<GymExercise> fetchById(int id) async {
    final database = await DatabaseService().database;
    final gymExercise = await database
        .rawQuery('''SELECT * FROM $tableName WHERE ID = ?''', [id]);
    return GymExercise.fromSqfliteDatabase(gymExercise.first);
  }

  Future<int> update({required int id, String? movement}) async {
    final database = await DatabaseService().database;
    return await database.update(
      tableName,
      {
        if (movement != null) 'movement': movement,
        'updated_at': DateTime.now().millisecondsSinceEpoch,
      },
      where: 'id = ?',
      conflictAlgorithm: ConflictAlgorithm.rollback,
      whereArgs: [id],
    );
  }

  Future<void> delete(int id) async {
    final database = await DatabaseService().database;
    await database.rawDelete('''DELETE FROM $tableName WHERE ID = ?''', [id]);
  }
}
