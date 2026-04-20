/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class StoredAuthSession
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredAuthSession._({
    this.id,
    required this.userId,
    required this.workspaceId,
    required this.refreshTokenHash,
    required this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
    this.revokedAt,
  });

  factory StoredAuthSession({
    int? id,
    required int userId,
    required int workspaceId,
    required String refreshTokenHash,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? revokedAt,
  }) = _StoredAuthSessionImpl;

  factory StoredAuthSession.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredAuthSession(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      workspaceId: jsonSerialization['workspaceId'] as int,
      refreshTokenHash: jsonSerialization['refreshTokenHash'] as String,
      expiresAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      revokedAt: jsonSerialization['revokedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['revokedAt']),
    );
  }

  static final t = StoredAuthSessionTable();

  static const db = StoredAuthSessionRepository._();

  @override
  int? id;

  int userId;

  int workspaceId;

  String refreshTokenHash;

  DateTime expiresAt;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? revokedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredAuthSession]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredAuthSession copyWith({
    int? id,
    int? userId,
    int? workspaceId,
    String? refreshTokenHash,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? revokedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredAuthSession',
      if (id != null) 'id': id,
      'userId': userId,
      'workspaceId': workspaceId,
      'refreshTokenHash': refreshTokenHash,
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredAuthSession',
      if (id != null) 'id': id,
      'userId': userId,
      'workspaceId': workspaceId,
      'refreshTokenHash': refreshTokenHash,
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (revokedAt != null) 'revokedAt': revokedAt?.toJson(),
    };
  }

  static StoredAuthSessionInclude include() {
    return StoredAuthSessionInclude._();
  }

  static StoredAuthSessionIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredAuthSessionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthSessionTable>? orderByList,
    StoredAuthSessionInclude? include,
  }) {
    return StoredAuthSessionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredAuthSession.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredAuthSession.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredAuthSessionImpl extends StoredAuthSession {
  _StoredAuthSessionImpl({
    int? id,
    required int userId,
    required int workspaceId,
    required String refreshTokenHash,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? revokedAt,
  }) : super._(
         id: id,
         userId: userId,
         workspaceId: workspaceId,
         refreshTokenHash: refreshTokenHash,
         expiresAt: expiresAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
         revokedAt: revokedAt,
       );

  /// Returns a shallow copy of this [StoredAuthSession]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredAuthSession copyWith({
    Object? id = _Undefined,
    int? userId,
    int? workspaceId,
    String? refreshTokenHash,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? revokedAt = _Undefined,
  }) {
    return StoredAuthSession(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      workspaceId: workspaceId ?? this.workspaceId,
      refreshTokenHash: refreshTokenHash ?? this.refreshTokenHash,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      revokedAt: revokedAt is DateTime? ? revokedAt : this.revokedAt,
    );
  }
}

class StoredAuthSessionUpdateTable
    extends _i1.UpdateTable<StoredAuthSessionTable> {
  StoredAuthSessionUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<String, String> refreshTokenHash(String value) =>
      _i1.ColumnValue(
        table.refreshTokenHash,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> expiresAt(DateTime value) =>
      _i1.ColumnValue(
        table.expiresAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> revokedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.revokedAt,
        value,
      );
}

class StoredAuthSessionTable extends _i1.Table<int?> {
  StoredAuthSessionTable({super.tableRelation})
    : super(tableName: 'auth_sessions') {
    updateTable = StoredAuthSessionUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    refreshTokenHash = _i1.ColumnString(
      'refreshTokenHash',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    revokedAt = _i1.ColumnDateTime(
      'revokedAt',
      this,
    );
  }

  late final StoredAuthSessionUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnString refreshTokenHash;

  late final _i1.ColumnDateTime expiresAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnDateTime revokedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    workspaceId,
    refreshTokenHash,
    expiresAt,
    createdAt,
    updatedAt,
    revokedAt,
  ];
}

class StoredAuthSessionInclude extends _i1.IncludeObject {
  StoredAuthSessionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredAuthSession.t;
}

class StoredAuthSessionIncludeList extends _i1.IncludeList {
  StoredAuthSessionIncludeList._({
    _i1.WhereExpressionBuilder<StoredAuthSessionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredAuthSession.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredAuthSession.t;
}

class StoredAuthSessionRepository {
  const StoredAuthSessionRepository._();

  /// Returns a list of [StoredAuthSession]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<StoredAuthSession>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthSessionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthSessionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredAuthSession>(
      where: where?.call(StoredAuthSession.t),
      orderBy: orderBy?.call(StoredAuthSession.t),
      orderByList: orderByList?.call(StoredAuthSession.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredAuthSession] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<StoredAuthSession?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthSessionTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredAuthSessionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthSessionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredAuthSession>(
      where: where?.call(StoredAuthSession.t),
      orderBy: orderBy?.call(StoredAuthSession.t),
      orderByList: orderByList?.call(StoredAuthSession.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredAuthSession] by its [id] or null if no such row exists.
  Future<StoredAuthSession?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredAuthSession>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredAuthSession]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredAuthSession]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredAuthSession>> insert(
    _i1.DatabaseSession session,
    List<StoredAuthSession> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredAuthSession>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredAuthSession] and returns the inserted row.
  ///
  /// The returned [StoredAuthSession] will have its `id` field set.
  Future<StoredAuthSession> insertRow(
    _i1.DatabaseSession session,
    StoredAuthSession row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredAuthSession>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredAuthSession]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredAuthSession>> update(
    _i1.DatabaseSession session,
    List<StoredAuthSession> rows, {
    _i1.ColumnSelections<StoredAuthSessionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredAuthSession>(
      rows,
      columns: columns?.call(StoredAuthSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredAuthSession]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredAuthSession> updateRow(
    _i1.DatabaseSession session,
    StoredAuthSession row, {
    _i1.ColumnSelections<StoredAuthSessionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredAuthSession>(
      row,
      columns: columns?.call(StoredAuthSession.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredAuthSession] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredAuthSession?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredAuthSessionUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredAuthSession>(
      id,
      columnValues: columnValues(StoredAuthSession.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredAuthSession]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredAuthSession>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredAuthSessionUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredAuthSessionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthSessionTable>? orderBy,
    _i1.OrderByListBuilder<StoredAuthSessionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredAuthSession>(
      columnValues: columnValues(StoredAuthSession.t.updateTable),
      where: where(StoredAuthSession.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredAuthSession.t),
      orderByList: orderByList?.call(StoredAuthSession.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredAuthSession]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredAuthSession>> delete(
    _i1.DatabaseSession session,
    List<StoredAuthSession> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredAuthSession>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredAuthSession].
  Future<StoredAuthSession> deleteRow(
    _i1.DatabaseSession session,
    StoredAuthSession row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredAuthSession>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredAuthSession>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredAuthSessionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredAuthSession>(
      where: where(StoredAuthSession.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthSessionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredAuthSession>(
      where: where?.call(StoredAuthSession.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredAuthSession] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredAuthSessionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredAuthSession>(
      where: where(StoredAuthSession.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
