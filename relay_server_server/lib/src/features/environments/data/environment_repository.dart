import 'package:serverpod/serverpod.dart';

import 'package:relay_server_server/src/generated/protocol.dart';

/// CRUD for environments per user. Used by [EnvironmentsEndpoint].
abstract final class EnvironmentRepository {
  EnvironmentRepository._();

  static Future<List<EnvironmentModel>> listByUserId(
    Session session,
    int userId,
  ) async {
    final rows = await StoredEnvironment.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
    return rows
        .map((r) => EnvironmentModel(name: r.name, variables: r.variables))
        .toList();
  }

  static Future<EnvironmentModel?> getByName(
    Session session,
    int userId,
    String name,
  ) async {
    final row = await StoredEnvironment.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.name.equals(name),
    );
    if (row == null) return null;
    return EnvironmentModel(name: row.name, variables: row.variables);
  }

  static Future<void> create(
    Session session,
    int userId,
    EnvironmentModel environment,
  ) async {
    await StoredEnvironment.db.insertRow(
      session,
      StoredEnvironment(
        userId: userId,
        name: environment.name,
        variables: environment.variables,
      ),
    );
  }

  static Future<void> update(
    Session session,
    int userId,
    EnvironmentModel environment,
  ) async {
    final row = await StoredEnvironment.db.findFirstRow(
      session,
      where: (t) =>
          t.userId.equals(userId) & t.name.equals(environment.name),
    );
    if (row == null) return;
    row.variables = environment.variables;
    await StoredEnvironment.db.updateRow(session, row);
  }

  static Future<void> delete(
    Session session,
    int userId,
    String name,
  ) async {
    final row = await StoredEnvironment.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.name.equals(name),
    );
    if (row != null) await StoredEnvironment.db.deleteRow(session, row);
  }
}
