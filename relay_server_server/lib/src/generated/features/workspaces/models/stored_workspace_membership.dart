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

abstract class StoredWorkspaceMembership
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredWorkspaceMembership._({
    this.id,
    required this.workspaceId,
    required this.userId,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredWorkspaceMembership({
    int? id,
    required int workspaceId,
    required int userId,
    required String role,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredWorkspaceMembershipImpl;

  factory StoredWorkspaceMembership.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredWorkspaceMembership(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      userId: jsonSerialization['userId'] as int,
      role: jsonSerialization['role'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredWorkspaceMembershipTable();

  static const db = StoredWorkspaceMembershipRepository._();

  @override
  int? id;

  int workspaceId;

  int userId;

  String role;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredWorkspaceMembership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredWorkspaceMembership copyWith({
    int? id,
    int? workspaceId,
    int? userId,
    String? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredWorkspaceMembership',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'role': role,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredWorkspaceMembership',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'userId': userId,
      'role': role,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredWorkspaceMembershipInclude include() {
    return StoredWorkspaceMembershipInclude._();
  }

  static StoredWorkspaceMembershipIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceMembershipTable>? orderByList,
    StoredWorkspaceMembershipInclude? include,
  }) {
    return StoredWorkspaceMembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceMembership.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredWorkspaceMembership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredWorkspaceMembershipImpl extends StoredWorkspaceMembership {
  _StoredWorkspaceMembershipImpl({
    int? id,
    required int workspaceId,
    required int userId,
    required String role,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         userId: userId,
         role: role,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredWorkspaceMembership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredWorkspaceMembership copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    int? userId,
    String? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredWorkspaceMembership(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      userId: userId ?? this.userId,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredWorkspaceMembershipUpdateTable
    extends _i1.UpdateTable<StoredWorkspaceMembershipTable> {
  StoredWorkspaceMembershipUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> role(String value) => _i1.ColumnValue(
    table.role,
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
}

class StoredWorkspaceMembershipTable extends _i1.Table<int?> {
  StoredWorkspaceMembershipTable({super.tableRelation})
    : super(tableName: 'workspace_memberships') {
    updateTable = StoredWorkspaceMembershipUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    role = _i1.ColumnString(
      'role',
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
  }

  late final StoredWorkspaceMembershipUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString role;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    userId,
    role,
    createdAt,
    updatedAt,
  ];
}

class StoredWorkspaceMembershipInclude extends _i1.IncludeObject {
  StoredWorkspaceMembershipInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceMembership.t;
}

class StoredWorkspaceMembershipIncludeList extends _i1.IncludeList {
  StoredWorkspaceMembershipIncludeList._({
    _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredWorkspaceMembership.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceMembership.t;
}

class StoredWorkspaceMembershipRepository {
  const StoredWorkspaceMembershipRepository._();

  /// Returns a list of [StoredWorkspaceMembership]s matching the given query parameters.
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
  Future<List<StoredWorkspaceMembership>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceMembershipTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredWorkspaceMembership>(
      where: where?.call(StoredWorkspaceMembership.t),
      orderBy: orderBy?.call(StoredWorkspaceMembership.t),
      orderByList: orderByList?.call(StoredWorkspaceMembership.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredWorkspaceMembership] matching the given query parameters.
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
  Future<StoredWorkspaceMembership?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceMembershipTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredWorkspaceMembership>(
      where: where?.call(StoredWorkspaceMembership.t),
      orderBy: orderBy?.call(StoredWorkspaceMembership.t),
      orderByList: orderByList?.call(StoredWorkspaceMembership.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredWorkspaceMembership] by its [id] or null if no such row exists.
  Future<StoredWorkspaceMembership?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredWorkspaceMembership>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredWorkspaceMembership]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredWorkspaceMembership]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredWorkspaceMembership>> insert(
    _i1.DatabaseSession session,
    List<StoredWorkspaceMembership> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredWorkspaceMembership>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredWorkspaceMembership] and returns the inserted row.
  ///
  /// The returned [StoredWorkspaceMembership] will have its `id` field set.
  Future<StoredWorkspaceMembership> insertRow(
    _i1.DatabaseSession session,
    StoredWorkspaceMembership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredWorkspaceMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceMembership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredWorkspaceMembership>> update(
    _i1.DatabaseSession session,
    List<StoredWorkspaceMembership> rows, {
    _i1.ColumnSelections<StoredWorkspaceMembershipTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredWorkspaceMembership>(
      rows,
      columns: columns?.call(StoredWorkspaceMembership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceMembership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredWorkspaceMembership> updateRow(
    _i1.DatabaseSession session,
    StoredWorkspaceMembership row, {
    _i1.ColumnSelections<StoredWorkspaceMembershipTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredWorkspaceMembership>(
      row,
      columns: columns?.call(StoredWorkspaceMembership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceMembership] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredWorkspaceMembership?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceMembershipUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredWorkspaceMembership>(
      id,
      columnValues: columnValues(StoredWorkspaceMembership.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceMembership]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredWorkspaceMembership>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceMembershipUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceMembershipTable>? orderBy,
    _i1.OrderByListBuilder<StoredWorkspaceMembershipTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredWorkspaceMembership>(
      columnValues: columnValues(StoredWorkspaceMembership.t.updateTable),
      where: where(StoredWorkspaceMembership.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceMembership.t),
      orderByList: orderByList?.call(StoredWorkspaceMembership.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredWorkspaceMembership]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredWorkspaceMembership>> delete(
    _i1.DatabaseSession session,
    List<StoredWorkspaceMembership> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredWorkspaceMembership>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredWorkspaceMembership].
  Future<StoredWorkspaceMembership> deleteRow(
    _i1.DatabaseSession session,
    StoredWorkspaceMembership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredWorkspaceMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredWorkspaceMembership>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredWorkspaceMembership>(
      where: where(StoredWorkspaceMembership.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredWorkspaceMembership>(
      where: where?.call(StoredWorkspaceMembership.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredWorkspaceMembership] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceMembershipTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredWorkspaceMembership>(
      where: where(StoredWorkspaceMembership.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
