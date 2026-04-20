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

abstract class StoredRequestRunRequestSnapshot
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredRequestRunRequestSnapshot._({
    this.id,
    required this.runId,
    required this.method,
    required this.url,
    required this.headersJson,
    required this.queryParamsJson,
    this.bodyJson,
    this.authJson,
    required this.resolvedVariablesJson,
    required this.timeoutMs,
  });

  factory StoredRequestRunRequestSnapshot({
    int? id,
    required int runId,
    required String method,
    required String url,
    required String headersJson,
    required String queryParamsJson,
    String? bodyJson,
    String? authJson,
    required String resolvedVariablesJson,
    required int timeoutMs,
  }) = _StoredRequestRunRequestSnapshotImpl;

  factory StoredRequestRunRequestSnapshot.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredRequestRunRequestSnapshot(
      id: jsonSerialization['id'] as int?,
      runId: jsonSerialization['runId'] as int,
      method: jsonSerialization['method'] as String,
      url: jsonSerialization['url'] as String,
      headersJson: jsonSerialization['headersJson'] as String,
      queryParamsJson: jsonSerialization['queryParamsJson'] as String,
      bodyJson: jsonSerialization['bodyJson'] as String?,
      authJson: jsonSerialization['authJson'] as String?,
      resolvedVariablesJson:
          jsonSerialization['resolvedVariablesJson'] as String,
      timeoutMs: jsonSerialization['timeoutMs'] as int,
    );
  }

  static final t = StoredRequestRunRequestSnapshotTable();

  static const db = StoredRequestRunRequestSnapshotRepository._();

  @override
  int? id;

  int runId;

  String method;

  String url;

  String headersJson;

  String queryParamsJson;

  String? bodyJson;

  String? authJson;

  String resolvedVariablesJson;

  int timeoutMs;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredRequestRunRequestSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredRequestRunRequestSnapshot copyWith({
    int? id,
    int? runId,
    String? method,
    String? url,
    String? headersJson,
    String? queryParamsJson,
    String? bodyJson,
    String? authJson,
    String? resolvedVariablesJson,
    int? timeoutMs,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredRequestRunRequestSnapshot',
      if (id != null) 'id': id,
      'runId': runId,
      'method': method,
      'url': url,
      'headersJson': headersJson,
      'queryParamsJson': queryParamsJson,
      if (bodyJson != null) 'bodyJson': bodyJson,
      if (authJson != null) 'authJson': authJson,
      'resolvedVariablesJson': resolvedVariablesJson,
      'timeoutMs': timeoutMs,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredRequestRunRequestSnapshot',
      if (id != null) 'id': id,
      'runId': runId,
      'method': method,
      'url': url,
      'headersJson': headersJson,
      'queryParamsJson': queryParamsJson,
      if (bodyJson != null) 'bodyJson': bodyJson,
      if (authJson != null) 'authJson': authJson,
      'resolvedVariablesJson': resolvedVariablesJson,
      'timeoutMs': timeoutMs,
    };
  }

  static StoredRequestRunRequestSnapshotInclude include() {
    return StoredRequestRunRequestSnapshotInclude._();
  }

  static StoredRequestRunRequestSnapshotIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunRequestSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunRequestSnapshotTable>? orderByList,
    StoredRequestRunRequestSnapshotInclude? include,
  }) {
    return StoredRequestRunRequestSnapshotIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRunRequestSnapshot.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredRequestRunRequestSnapshot.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredRequestRunRequestSnapshotImpl
    extends StoredRequestRunRequestSnapshot {
  _StoredRequestRunRequestSnapshotImpl({
    int? id,
    required int runId,
    required String method,
    required String url,
    required String headersJson,
    required String queryParamsJson,
    String? bodyJson,
    String? authJson,
    required String resolvedVariablesJson,
    required int timeoutMs,
  }) : super._(
         id: id,
         runId: runId,
         method: method,
         url: url,
         headersJson: headersJson,
         queryParamsJson: queryParamsJson,
         bodyJson: bodyJson,
         authJson: authJson,
         resolvedVariablesJson: resolvedVariablesJson,
         timeoutMs: timeoutMs,
       );

  /// Returns a shallow copy of this [StoredRequestRunRequestSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredRequestRunRequestSnapshot copyWith({
    Object? id = _Undefined,
    int? runId,
    String? method,
    String? url,
    String? headersJson,
    String? queryParamsJson,
    Object? bodyJson = _Undefined,
    Object? authJson = _Undefined,
    String? resolvedVariablesJson,
    int? timeoutMs,
  }) {
    return StoredRequestRunRequestSnapshot(
      id: id is int? ? id : this.id,
      runId: runId ?? this.runId,
      method: method ?? this.method,
      url: url ?? this.url,
      headersJson: headersJson ?? this.headersJson,
      queryParamsJson: queryParamsJson ?? this.queryParamsJson,
      bodyJson: bodyJson is String? ? bodyJson : this.bodyJson,
      authJson: authJson is String? ? authJson : this.authJson,
      resolvedVariablesJson:
          resolvedVariablesJson ?? this.resolvedVariablesJson,
      timeoutMs: timeoutMs ?? this.timeoutMs,
    );
  }
}

class StoredRequestRunRequestSnapshotUpdateTable
    extends _i1.UpdateTable<StoredRequestRunRequestSnapshotTable> {
  StoredRequestRunRequestSnapshotUpdateTable(super.table);

  _i1.ColumnValue<int, int> runId(int value) => _i1.ColumnValue(
    table.runId,
    value,
  );

  _i1.ColumnValue<String, String> method(String value) => _i1.ColumnValue(
    table.method,
    value,
  );

  _i1.ColumnValue<String, String> url(String value) => _i1.ColumnValue(
    table.url,
    value,
  );

  _i1.ColumnValue<String, String> headersJson(String value) => _i1.ColumnValue(
    table.headersJson,
    value,
  );

  _i1.ColumnValue<String, String> queryParamsJson(String value) =>
      _i1.ColumnValue(
        table.queryParamsJson,
        value,
      );

  _i1.ColumnValue<String, String> bodyJson(String? value) => _i1.ColumnValue(
    table.bodyJson,
    value,
  );

  _i1.ColumnValue<String, String> authJson(String? value) => _i1.ColumnValue(
    table.authJson,
    value,
  );

  _i1.ColumnValue<String, String> resolvedVariablesJson(String value) =>
      _i1.ColumnValue(
        table.resolvedVariablesJson,
        value,
      );

  _i1.ColumnValue<int, int> timeoutMs(int value) => _i1.ColumnValue(
    table.timeoutMs,
    value,
  );
}

class StoredRequestRunRequestSnapshotTable extends _i1.Table<int?> {
  StoredRequestRunRequestSnapshotTable({super.tableRelation})
    : super(tableName: 'request_run_requests') {
    updateTable = StoredRequestRunRequestSnapshotUpdateTable(this);
    runId = _i1.ColumnInt(
      'runId',
      this,
    );
    method = _i1.ColumnString(
      'method',
      this,
    );
    url = _i1.ColumnString(
      'url',
      this,
    );
    headersJson = _i1.ColumnString(
      'headersJson',
      this,
    );
    queryParamsJson = _i1.ColumnString(
      'queryParamsJson',
      this,
    );
    bodyJson = _i1.ColumnString(
      'bodyJson',
      this,
    );
    authJson = _i1.ColumnString(
      'authJson',
      this,
    );
    resolvedVariablesJson = _i1.ColumnString(
      'resolvedVariablesJson',
      this,
    );
    timeoutMs = _i1.ColumnInt(
      'timeoutMs',
      this,
    );
  }

  late final StoredRequestRunRequestSnapshotUpdateTable updateTable;

  late final _i1.ColumnInt runId;

  late final _i1.ColumnString method;

  late final _i1.ColumnString url;

  late final _i1.ColumnString headersJson;

  late final _i1.ColumnString queryParamsJson;

  late final _i1.ColumnString bodyJson;

  late final _i1.ColumnString authJson;

  late final _i1.ColumnString resolvedVariablesJson;

  late final _i1.ColumnInt timeoutMs;

  @override
  List<_i1.Column> get columns => [
    id,
    runId,
    method,
    url,
    headersJson,
    queryParamsJson,
    bodyJson,
    authJson,
    resolvedVariablesJson,
    timeoutMs,
  ];
}

class StoredRequestRunRequestSnapshotInclude extends _i1.IncludeObject {
  StoredRequestRunRequestSnapshotInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredRequestRunRequestSnapshot.t;
}

class StoredRequestRunRequestSnapshotIncludeList extends _i1.IncludeList {
  StoredRequestRunRequestSnapshotIncludeList._({
    _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredRequestRunRequestSnapshot.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredRequestRunRequestSnapshot.t;
}

class StoredRequestRunRequestSnapshotRepository {
  const StoredRequestRunRequestSnapshotRepository._();

  /// Returns a list of [StoredRequestRunRequestSnapshot]s matching the given query parameters.
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
  Future<List<StoredRequestRunRequestSnapshot>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunRequestSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunRequestSnapshotTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredRequestRunRequestSnapshot>(
      where: where?.call(StoredRequestRunRequestSnapshot.t),
      orderBy: orderBy?.call(StoredRequestRunRequestSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunRequestSnapshot.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredRequestRunRequestSnapshot] matching the given query parameters.
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
  Future<StoredRequestRunRequestSnapshot?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunRequestSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunRequestSnapshotTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredRequestRunRequestSnapshot>(
      where: where?.call(StoredRequestRunRequestSnapshot.t),
      orderBy: orderBy?.call(StoredRequestRunRequestSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunRequestSnapshot.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredRequestRunRequestSnapshot] by its [id] or null if no such row exists.
  Future<StoredRequestRunRequestSnapshot?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredRequestRunRequestSnapshot>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredRequestRunRequestSnapshot]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredRequestRunRequestSnapshot]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredRequestRunRequestSnapshot>> insert(
    _i1.DatabaseSession session,
    List<StoredRequestRunRequestSnapshot> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredRequestRunRequestSnapshot>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredRequestRunRequestSnapshot] and returns the inserted row.
  ///
  /// The returned [StoredRequestRunRequestSnapshot] will have its `id` field set.
  Future<StoredRequestRunRequestSnapshot> insertRow(
    _i1.DatabaseSession session,
    StoredRequestRunRequestSnapshot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredRequestRunRequestSnapshot>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRunRequestSnapshot]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredRequestRunRequestSnapshot>> update(
    _i1.DatabaseSession session,
    List<StoredRequestRunRequestSnapshot> rows, {
    _i1.ColumnSelections<StoredRequestRunRequestSnapshotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredRequestRunRequestSnapshot>(
      rows,
      columns: columns?.call(StoredRequestRunRequestSnapshot.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRunRequestSnapshot]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredRequestRunRequestSnapshot> updateRow(
    _i1.DatabaseSession session,
    StoredRequestRunRequestSnapshot row, {
    _i1.ColumnSelections<StoredRequestRunRequestSnapshotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredRequestRunRequestSnapshot>(
      row,
      columns: columns?.call(StoredRequestRunRequestSnapshot.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRunRequestSnapshot] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredRequestRunRequestSnapshot?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<
      StoredRequestRunRequestSnapshotUpdateTable
    >
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredRequestRunRequestSnapshot>(
      id,
      columnValues: columnValues(StoredRequestRunRequestSnapshot.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRunRequestSnapshot]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredRequestRunRequestSnapshot>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<
      StoredRequestRunRequestSnapshotUpdateTable
    >
    columnValues,
    required _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>
    where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunRequestSnapshotTable>? orderBy,
    _i1.OrderByListBuilder<StoredRequestRunRequestSnapshotTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredRequestRunRequestSnapshot>(
      columnValues: columnValues(StoredRequestRunRequestSnapshot.t.updateTable),
      where: where(StoredRequestRunRequestSnapshot.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRunRequestSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunRequestSnapshot.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredRequestRunRequestSnapshot]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredRequestRunRequestSnapshot>> delete(
    _i1.DatabaseSession session,
    List<StoredRequestRunRequestSnapshot> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredRequestRunRequestSnapshot>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredRequestRunRequestSnapshot].
  Future<StoredRequestRunRequestSnapshot> deleteRow(
    _i1.DatabaseSession session,
    StoredRequestRunRequestSnapshot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredRequestRunRequestSnapshot>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredRequestRunRequestSnapshot>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>
    where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredRequestRunRequestSnapshot>(
      where: where(StoredRequestRunRequestSnapshot.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredRequestRunRequestSnapshot>(
      where: where?.call(StoredRequestRunRequestSnapshot.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredRequestRunRequestSnapshot] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunRequestSnapshotTable>
    where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredRequestRunRequestSnapshot>(
      where: where(StoredRequestRunRequestSnapshot.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
