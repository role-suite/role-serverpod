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

abstract class StoredRequestRunResponseSnapshot
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredRequestRunResponseSnapshot._({
    this.id,
    required this.runId,
    required this.statusCode,
    required this.headersJson,
    this.bodyText,
    this.bodyBase64,
    required this.sizeBytes,
    required this.truncated,
  });

  factory StoredRequestRunResponseSnapshot({
    int? id,
    required int runId,
    required int statusCode,
    required String headersJson,
    String? bodyText,
    String? bodyBase64,
    required int sizeBytes,
    required bool truncated,
  }) = _StoredRequestRunResponseSnapshotImpl;

  factory StoredRequestRunResponseSnapshot.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredRequestRunResponseSnapshot(
      id: jsonSerialization['id'] as int?,
      runId: jsonSerialization['runId'] as int,
      statusCode: jsonSerialization['statusCode'] as int,
      headersJson: jsonSerialization['headersJson'] as String,
      bodyText: jsonSerialization['bodyText'] as String?,
      bodyBase64: jsonSerialization['bodyBase64'] as String?,
      sizeBytes: jsonSerialization['sizeBytes'] as int,
      truncated: _i1.BoolJsonExtension.fromJson(jsonSerialization['truncated']),
    );
  }

  static final t = StoredRequestRunResponseSnapshotTable();

  static const db = StoredRequestRunResponseSnapshotRepository._();

  @override
  int? id;

  int runId;

  int statusCode;

  String headersJson;

  String? bodyText;

  String? bodyBase64;

  int sizeBytes;

  bool truncated;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredRequestRunResponseSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredRequestRunResponseSnapshot copyWith({
    int? id,
    int? runId,
    int? statusCode,
    String? headersJson,
    String? bodyText,
    String? bodyBase64,
    int? sizeBytes,
    bool? truncated,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredRequestRunResponseSnapshot',
      if (id != null) 'id': id,
      'runId': runId,
      'statusCode': statusCode,
      'headersJson': headersJson,
      if (bodyText != null) 'bodyText': bodyText,
      if (bodyBase64 != null) 'bodyBase64': bodyBase64,
      'sizeBytes': sizeBytes,
      'truncated': truncated,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredRequestRunResponseSnapshot',
      if (id != null) 'id': id,
      'runId': runId,
      'statusCode': statusCode,
      'headersJson': headersJson,
      if (bodyText != null) 'bodyText': bodyText,
      if (bodyBase64 != null) 'bodyBase64': bodyBase64,
      'sizeBytes': sizeBytes,
      'truncated': truncated,
    };
  }

  static StoredRequestRunResponseSnapshotInclude include() {
    return StoredRequestRunResponseSnapshotInclude._();
  }

  static StoredRequestRunResponseSnapshotIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunResponseSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunResponseSnapshotTable>? orderByList,
    StoredRequestRunResponseSnapshotInclude? include,
  }) {
    return StoredRequestRunResponseSnapshotIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRunResponseSnapshot.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredRequestRunResponseSnapshot.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredRequestRunResponseSnapshotImpl
    extends StoredRequestRunResponseSnapshot {
  _StoredRequestRunResponseSnapshotImpl({
    int? id,
    required int runId,
    required int statusCode,
    required String headersJson,
    String? bodyText,
    String? bodyBase64,
    required int sizeBytes,
    required bool truncated,
  }) : super._(
         id: id,
         runId: runId,
         statusCode: statusCode,
         headersJson: headersJson,
         bodyText: bodyText,
         bodyBase64: bodyBase64,
         sizeBytes: sizeBytes,
         truncated: truncated,
       );

  /// Returns a shallow copy of this [StoredRequestRunResponseSnapshot]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredRequestRunResponseSnapshot copyWith({
    Object? id = _Undefined,
    int? runId,
    int? statusCode,
    String? headersJson,
    Object? bodyText = _Undefined,
    Object? bodyBase64 = _Undefined,
    int? sizeBytes,
    bool? truncated,
  }) {
    return StoredRequestRunResponseSnapshot(
      id: id is int? ? id : this.id,
      runId: runId ?? this.runId,
      statusCode: statusCode ?? this.statusCode,
      headersJson: headersJson ?? this.headersJson,
      bodyText: bodyText is String? ? bodyText : this.bodyText,
      bodyBase64: bodyBase64 is String? ? bodyBase64 : this.bodyBase64,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      truncated: truncated ?? this.truncated,
    );
  }
}

class StoredRequestRunResponseSnapshotUpdateTable
    extends _i1.UpdateTable<StoredRequestRunResponseSnapshotTable> {
  StoredRequestRunResponseSnapshotUpdateTable(super.table);

  _i1.ColumnValue<int, int> runId(int value) => _i1.ColumnValue(
    table.runId,
    value,
  );

  _i1.ColumnValue<int, int> statusCode(int value) => _i1.ColumnValue(
    table.statusCode,
    value,
  );

  _i1.ColumnValue<String, String> headersJson(String value) => _i1.ColumnValue(
    table.headersJson,
    value,
  );

  _i1.ColumnValue<String, String> bodyText(String? value) => _i1.ColumnValue(
    table.bodyText,
    value,
  );

  _i1.ColumnValue<String, String> bodyBase64(String? value) => _i1.ColumnValue(
    table.bodyBase64,
    value,
  );

  _i1.ColumnValue<int, int> sizeBytes(int value) => _i1.ColumnValue(
    table.sizeBytes,
    value,
  );

  _i1.ColumnValue<bool, bool> truncated(bool value) => _i1.ColumnValue(
    table.truncated,
    value,
  );
}

class StoredRequestRunResponseSnapshotTable extends _i1.Table<int?> {
  StoredRequestRunResponseSnapshotTable({super.tableRelation})
    : super(tableName: 'request_run_responses') {
    updateTable = StoredRequestRunResponseSnapshotUpdateTable(this);
    runId = _i1.ColumnInt(
      'runId',
      this,
    );
    statusCode = _i1.ColumnInt(
      'statusCode',
      this,
    );
    headersJson = _i1.ColumnString(
      'headersJson',
      this,
    );
    bodyText = _i1.ColumnString(
      'bodyText',
      this,
    );
    bodyBase64 = _i1.ColumnString(
      'bodyBase64',
      this,
    );
    sizeBytes = _i1.ColumnInt(
      'sizeBytes',
      this,
    );
    truncated = _i1.ColumnBool(
      'truncated',
      this,
    );
  }

  late final StoredRequestRunResponseSnapshotUpdateTable updateTable;

  late final _i1.ColumnInt runId;

  late final _i1.ColumnInt statusCode;

  late final _i1.ColumnString headersJson;

  late final _i1.ColumnString bodyText;

  late final _i1.ColumnString bodyBase64;

  late final _i1.ColumnInt sizeBytes;

  late final _i1.ColumnBool truncated;

  @override
  List<_i1.Column> get columns => [
    id,
    runId,
    statusCode,
    headersJson,
    bodyText,
    bodyBase64,
    sizeBytes,
    truncated,
  ];
}

class StoredRequestRunResponseSnapshotInclude extends _i1.IncludeObject {
  StoredRequestRunResponseSnapshotInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredRequestRunResponseSnapshot.t;
}

class StoredRequestRunResponseSnapshotIncludeList extends _i1.IncludeList {
  StoredRequestRunResponseSnapshotIncludeList._({
    _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredRequestRunResponseSnapshot.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredRequestRunResponseSnapshot.t;
}

class StoredRequestRunResponseSnapshotRepository {
  const StoredRequestRunResponseSnapshotRepository._();

  /// Returns a list of [StoredRequestRunResponseSnapshot]s matching the given query parameters.
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
  Future<List<StoredRequestRunResponseSnapshot>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunResponseSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunResponseSnapshotTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredRequestRunResponseSnapshot>(
      where: where?.call(StoredRequestRunResponseSnapshot.t),
      orderBy: orderBy?.call(StoredRequestRunResponseSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunResponseSnapshot.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredRequestRunResponseSnapshot] matching the given query parameters.
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
  Future<StoredRequestRunResponseSnapshot?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunResponseSnapshotTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunResponseSnapshotTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredRequestRunResponseSnapshot>(
      where: where?.call(StoredRequestRunResponseSnapshot.t),
      orderBy: orderBy?.call(StoredRequestRunResponseSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunResponseSnapshot.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredRequestRunResponseSnapshot] by its [id] or null if no such row exists.
  Future<StoredRequestRunResponseSnapshot?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredRequestRunResponseSnapshot>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredRequestRunResponseSnapshot]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredRequestRunResponseSnapshot]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredRequestRunResponseSnapshot>> insert(
    _i1.DatabaseSession session,
    List<StoredRequestRunResponseSnapshot> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredRequestRunResponseSnapshot>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredRequestRunResponseSnapshot] and returns the inserted row.
  ///
  /// The returned [StoredRequestRunResponseSnapshot] will have its `id` field set.
  Future<StoredRequestRunResponseSnapshot> insertRow(
    _i1.DatabaseSession session,
    StoredRequestRunResponseSnapshot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredRequestRunResponseSnapshot>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRunResponseSnapshot]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredRequestRunResponseSnapshot>> update(
    _i1.DatabaseSession session,
    List<StoredRequestRunResponseSnapshot> rows, {
    _i1.ColumnSelections<StoredRequestRunResponseSnapshotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredRequestRunResponseSnapshot>(
      rows,
      columns: columns?.call(StoredRequestRunResponseSnapshot.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRunResponseSnapshot]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredRequestRunResponseSnapshot> updateRow(
    _i1.DatabaseSession session,
    StoredRequestRunResponseSnapshot row, {
    _i1.ColumnSelections<StoredRequestRunResponseSnapshotTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredRequestRunResponseSnapshot>(
      row,
      columns: columns?.call(StoredRequestRunResponseSnapshot.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRunResponseSnapshot] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredRequestRunResponseSnapshot?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<
      StoredRequestRunResponseSnapshotUpdateTable
    >
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredRequestRunResponseSnapshot>(
      id,
      columnValues: columnValues(
        StoredRequestRunResponseSnapshot.t.updateTable,
      ),
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRunResponseSnapshot]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredRequestRunResponseSnapshot>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<
      StoredRequestRunResponseSnapshotUpdateTable
    >
    columnValues,
    required _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>
    where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunResponseSnapshotTable>? orderBy,
    _i1.OrderByListBuilder<StoredRequestRunResponseSnapshotTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredRequestRunResponseSnapshot>(
      columnValues: columnValues(
        StoredRequestRunResponseSnapshot.t.updateTable,
      ),
      where: where(StoredRequestRunResponseSnapshot.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRunResponseSnapshot.t),
      orderByList: orderByList?.call(StoredRequestRunResponseSnapshot.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredRequestRunResponseSnapshot]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredRequestRunResponseSnapshot>> delete(
    _i1.DatabaseSession session,
    List<StoredRequestRunResponseSnapshot> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredRequestRunResponseSnapshot>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredRequestRunResponseSnapshot].
  Future<StoredRequestRunResponseSnapshot> deleteRow(
    _i1.DatabaseSession session,
    StoredRequestRunResponseSnapshot row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredRequestRunResponseSnapshot>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredRequestRunResponseSnapshot>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>
    where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredRequestRunResponseSnapshot>(
      where: where(StoredRequestRunResponseSnapshot.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredRequestRunResponseSnapshot>(
      where: where?.call(StoredRequestRunResponseSnapshot.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredRequestRunResponseSnapshot] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunResponseSnapshotTable>
    where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredRequestRunResponseSnapshot>(
      where: where(StoredRequestRunResponseSnapshot.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
