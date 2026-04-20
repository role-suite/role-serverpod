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

abstract class StoredRequestRun
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredRequestRun._({
    this.id,
    required this.workspaceId,
    required this.initiatedByUserId,
    required this.sourceType,
    this.sourceCollectionId,
    this.sourceEndpointId,
    required this.status,
    this.startedAt,
    this.completedAt,
    this.durationMs,
    this.errorCode,
    this.errorMessage,
    this.errorJson,
    required this.createdAt,
  });

  factory StoredRequestRun({
    int? id,
    required int workspaceId,
    required int initiatedByUserId,
    required String sourceType,
    int? sourceCollectionId,
    int? sourceEndpointId,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationMs,
    String? errorCode,
    String? errorMessage,
    String? errorJson,
    required DateTime createdAt,
  }) = _StoredRequestRunImpl;

  factory StoredRequestRun.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredRequestRun(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      initiatedByUserId: jsonSerialization['initiatedByUserId'] as int,
      sourceType: jsonSerialization['sourceType'] as String,
      sourceCollectionId: jsonSerialization['sourceCollectionId'] as int?,
      sourceEndpointId: jsonSerialization['sourceEndpointId'] as int?,
      status: jsonSerialization['status'] as String,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      durationMs: jsonSerialization['durationMs'] as int?,
      errorCode: jsonSerialization['errorCode'] as String?,
      errorMessage: jsonSerialization['errorMessage'] as String?,
      errorJson: jsonSerialization['errorJson'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = StoredRequestRunTable();

  static const db = StoredRequestRunRepository._();

  @override
  int? id;

  int workspaceId;

  int initiatedByUserId;

  String sourceType;

  int? sourceCollectionId;

  int? sourceEndpointId;

  String status;

  DateTime? startedAt;

  DateTime? completedAt;

  int? durationMs;

  String? errorCode;

  String? errorMessage;

  String? errorJson;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredRequestRun]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredRequestRun copyWith({
    int? id,
    int? workspaceId,
    int? initiatedByUserId,
    String? sourceType,
    int? sourceCollectionId,
    int? sourceEndpointId,
    String? status,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationMs,
    String? errorCode,
    String? errorMessage,
    String? errorJson,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredRequestRun',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'initiatedByUserId': initiatedByUserId,
      'sourceType': sourceType,
      if (sourceCollectionId != null) 'sourceCollectionId': sourceCollectionId,
      if (sourceEndpointId != null) 'sourceEndpointId': sourceEndpointId,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (durationMs != null) 'durationMs': durationMs,
      if (errorCode != null) 'errorCode': errorCode,
      if (errorMessage != null) 'errorMessage': errorMessage,
      if (errorJson != null) 'errorJson': errorJson,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredRequestRun',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'initiatedByUserId': initiatedByUserId,
      'sourceType': sourceType,
      if (sourceCollectionId != null) 'sourceCollectionId': sourceCollectionId,
      if (sourceEndpointId != null) 'sourceEndpointId': sourceEndpointId,
      'status': status,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (durationMs != null) 'durationMs': durationMs,
      if (errorCode != null) 'errorCode': errorCode,
      if (errorMessage != null) 'errorMessage': errorMessage,
      if (errorJson != null) 'errorJson': errorJson,
      'createdAt': createdAt.toJson(),
    };
  }

  static StoredRequestRunInclude include() {
    return StoredRequestRunInclude._();
  }

  static StoredRequestRunIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredRequestRunTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunTable>? orderByList,
    StoredRequestRunInclude? include,
  }) {
    return StoredRequestRunIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRun.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredRequestRun.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredRequestRunImpl extends StoredRequestRun {
  _StoredRequestRunImpl({
    int? id,
    required int workspaceId,
    required int initiatedByUserId,
    required String sourceType,
    int? sourceCollectionId,
    int? sourceEndpointId,
    required String status,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationMs,
    String? errorCode,
    String? errorMessage,
    String? errorJson,
    required DateTime createdAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         initiatedByUserId: initiatedByUserId,
         sourceType: sourceType,
         sourceCollectionId: sourceCollectionId,
         sourceEndpointId: sourceEndpointId,
         status: status,
         startedAt: startedAt,
         completedAt: completedAt,
         durationMs: durationMs,
         errorCode: errorCode,
         errorMessage: errorMessage,
         errorJson: errorJson,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [StoredRequestRun]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredRequestRun copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    int? initiatedByUserId,
    String? sourceType,
    Object? sourceCollectionId = _Undefined,
    Object? sourceEndpointId = _Undefined,
    String? status,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? durationMs = _Undefined,
    Object? errorCode = _Undefined,
    Object? errorMessage = _Undefined,
    Object? errorJson = _Undefined,
    DateTime? createdAt,
  }) {
    return StoredRequestRun(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      initiatedByUserId: initiatedByUserId ?? this.initiatedByUserId,
      sourceType: sourceType ?? this.sourceType,
      sourceCollectionId: sourceCollectionId is int?
          ? sourceCollectionId
          : this.sourceCollectionId,
      sourceEndpointId: sourceEndpointId is int?
          ? sourceEndpointId
          : this.sourceEndpointId,
      status: status ?? this.status,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      durationMs: durationMs is int? ? durationMs : this.durationMs,
      errorCode: errorCode is String? ? errorCode : this.errorCode,
      errorMessage: errorMessage is String? ? errorMessage : this.errorMessage,
      errorJson: errorJson is String? ? errorJson : this.errorJson,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class StoredRequestRunUpdateTable
    extends _i1.UpdateTable<StoredRequestRunTable> {
  StoredRequestRunUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<int, int> initiatedByUserId(int value) => _i1.ColumnValue(
    table.initiatedByUserId,
    value,
  );

  _i1.ColumnValue<String, String> sourceType(String value) => _i1.ColumnValue(
    table.sourceType,
    value,
  );

  _i1.ColumnValue<int, int> sourceCollectionId(int? value) => _i1.ColumnValue(
    table.sourceCollectionId,
    value,
  );

  _i1.ColumnValue<int, int> sourceEndpointId(int? value) => _i1.ColumnValue(
    table.sourceEndpointId,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.startedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.completedAt,
        value,
      );

  _i1.ColumnValue<int, int> durationMs(int? value) => _i1.ColumnValue(
    table.durationMs,
    value,
  );

  _i1.ColumnValue<String, String> errorCode(String? value) => _i1.ColumnValue(
    table.errorCode,
    value,
  );

  _i1.ColumnValue<String, String> errorMessage(String? value) =>
      _i1.ColumnValue(
        table.errorMessage,
        value,
      );

  _i1.ColumnValue<String, String> errorJson(String? value) => _i1.ColumnValue(
    table.errorJson,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class StoredRequestRunTable extends _i1.Table<int?> {
  StoredRequestRunTable({super.tableRelation})
    : super(tableName: 'request_runs') {
    updateTable = StoredRequestRunUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    initiatedByUserId = _i1.ColumnInt(
      'initiatedByUserId',
      this,
    );
    sourceType = _i1.ColumnString(
      'sourceType',
      this,
    );
    sourceCollectionId = _i1.ColumnInt(
      'sourceCollectionId',
      this,
    );
    sourceEndpointId = _i1.ColumnInt(
      'sourceEndpointId',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    startedAt = _i1.ColumnDateTime(
      'startedAt',
      this,
    );
    completedAt = _i1.ColumnDateTime(
      'completedAt',
      this,
    );
    durationMs = _i1.ColumnInt(
      'durationMs',
      this,
    );
    errorCode = _i1.ColumnString(
      'errorCode',
      this,
    );
    errorMessage = _i1.ColumnString(
      'errorMessage',
      this,
    );
    errorJson = _i1.ColumnString(
      'errorJson',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final StoredRequestRunUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnInt initiatedByUserId;

  late final _i1.ColumnString sourceType;

  late final _i1.ColumnInt sourceCollectionId;

  late final _i1.ColumnInt sourceEndpointId;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime startedAt;

  late final _i1.ColumnDateTime completedAt;

  late final _i1.ColumnInt durationMs;

  late final _i1.ColumnString errorCode;

  late final _i1.ColumnString errorMessage;

  late final _i1.ColumnString errorJson;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    initiatedByUserId,
    sourceType,
    sourceCollectionId,
    sourceEndpointId,
    status,
    startedAt,
    completedAt,
    durationMs,
    errorCode,
    errorMessage,
    errorJson,
    createdAt,
  ];
}

class StoredRequestRunInclude extends _i1.IncludeObject {
  StoredRequestRunInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredRequestRun.t;
}

class StoredRequestRunIncludeList extends _i1.IncludeList {
  StoredRequestRunIncludeList._({
    _i1.WhereExpressionBuilder<StoredRequestRunTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredRequestRun.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredRequestRun.t;
}

class StoredRequestRunRepository {
  const StoredRequestRunRepository._();

  /// Returns a list of [StoredRequestRun]s matching the given query parameters.
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
  Future<List<StoredRequestRun>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredRequestRun>(
      where: where?.call(StoredRequestRun.t),
      orderBy: orderBy?.call(StoredRequestRun.t),
      orderByList: orderByList?.call(StoredRequestRun.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredRequestRun] matching the given query parameters.
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
  Future<StoredRequestRun?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredRequestRunTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredRequestRun>(
      where: where?.call(StoredRequestRun.t),
      orderBy: orderBy?.call(StoredRequestRun.t),
      orderByList: orderByList?.call(StoredRequestRun.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredRequestRun] by its [id] or null if no such row exists.
  Future<StoredRequestRun?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredRequestRun>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredRequestRun]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredRequestRun]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredRequestRun>> insert(
    _i1.DatabaseSession session,
    List<StoredRequestRun> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredRequestRun>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredRequestRun] and returns the inserted row.
  ///
  /// The returned [StoredRequestRun] will have its `id` field set.
  Future<StoredRequestRun> insertRow(
    _i1.DatabaseSession session,
    StoredRequestRun row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredRequestRun>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRun]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredRequestRun>> update(
    _i1.DatabaseSession session,
    List<StoredRequestRun> rows, {
    _i1.ColumnSelections<StoredRequestRunTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredRequestRun>(
      rows,
      columns: columns?.call(StoredRequestRun.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRun]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredRequestRun> updateRow(
    _i1.DatabaseSession session,
    StoredRequestRun row, {
    _i1.ColumnSelections<StoredRequestRunTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredRequestRun>(
      row,
      columns: columns?.call(StoredRequestRun.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredRequestRun] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredRequestRun?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredRequestRunUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredRequestRun>(
      id,
      columnValues: columnValues(StoredRequestRun.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredRequestRun]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredRequestRun>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredRequestRunUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredRequestRunTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredRequestRunTable>? orderBy,
    _i1.OrderByListBuilder<StoredRequestRunTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredRequestRun>(
      columnValues: columnValues(StoredRequestRun.t.updateTable),
      where: where(StoredRequestRun.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredRequestRun.t),
      orderByList: orderByList?.call(StoredRequestRun.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredRequestRun]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredRequestRun>> delete(
    _i1.DatabaseSession session,
    List<StoredRequestRun> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredRequestRun>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredRequestRun].
  Future<StoredRequestRun> deleteRow(
    _i1.DatabaseSession session,
    StoredRequestRun row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredRequestRun>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredRequestRun>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredRequestRun>(
      where: where(StoredRequestRun.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredRequestRunTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredRequestRun>(
      where: where?.call(StoredRequestRun.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredRequestRun] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredRequestRunTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredRequestRun>(
      where: where(StoredRequestRun.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
