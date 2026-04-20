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

abstract class StoredImportExportJob
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredImportExportJob._({
    this.id,
    required this.workspaceId,
    required this.type,
    required this.status,
    required this.format,
    required this.summaryJson,
    required this.createdByUserId,
    required this.createdAt,
    required this.completedAt,
  });

  factory StoredImportExportJob({
    int? id,
    required int workspaceId,
    required String type,
    required String status,
    required String format,
    required String summaryJson,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime completedAt,
  }) = _StoredImportExportJobImpl;

  factory StoredImportExportJob.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredImportExportJob(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      type: jsonSerialization['type'] as String,
      status: jsonSerialization['status'] as String,
      format: jsonSerialization['format'] as String,
      summaryJson: jsonSerialization['summaryJson'] as String,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      completedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['completedAt'],
      ),
    );
  }

  static final t = StoredImportExportJobTable();

  static const db = StoredImportExportJobRepository._();

  @override
  int? id;

  int workspaceId;

  String type;

  String status;

  String format;

  String summaryJson;

  int createdByUserId;

  DateTime createdAt;

  DateTime completedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredImportExportJob]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredImportExportJob copyWith({
    int? id,
    int? workspaceId,
    String? type,
    String? status,
    String? format,
    String? summaryJson,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? completedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredImportExportJob',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'type': type,
      'status': status,
      'format': format,
      'summaryJson': summaryJson,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'completedAt': completedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredImportExportJob',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'type': type,
      'status': status,
      'format': format,
      'summaryJson': summaryJson,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'completedAt': completedAt.toJson(),
    };
  }

  static StoredImportExportJobInclude include() {
    return StoredImportExportJobInclude._();
  }

  static StoredImportExportJobIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredImportExportJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredImportExportJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredImportExportJobTable>? orderByList,
    StoredImportExportJobInclude? include,
  }) {
    return StoredImportExportJobIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredImportExportJob.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredImportExportJob.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredImportExportJobImpl extends StoredImportExportJob {
  _StoredImportExportJobImpl({
    int? id,
    required int workspaceId,
    required String type,
    required String status,
    required String format,
    required String summaryJson,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime completedAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         type: type,
         status: status,
         format: format,
         summaryJson: summaryJson,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         completedAt: completedAt,
       );

  /// Returns a shallow copy of this [StoredImportExportJob]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredImportExportJob copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    String? type,
    String? status,
    String? format,
    String? summaryJson,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? completedAt,
  }) {
    return StoredImportExportJob(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      type: type ?? this.type,
      status: status ?? this.status,
      format: format ?? this.format,
      summaryJson: summaryJson ?? this.summaryJson,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      completedAt: completedAt ?? this.completedAt,
    );
  }
}

class StoredImportExportJobUpdateTable
    extends _i1.UpdateTable<StoredImportExportJobTable> {
  StoredImportExportJobUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> format(String value) => _i1.ColumnValue(
    table.format,
    value,
  );

  _i1.ColumnValue<String, String> summaryJson(String value) => _i1.ColumnValue(
    table.summaryJson,
    value,
  );

  _i1.ColumnValue<int, int> createdByUserId(int value) => _i1.ColumnValue(
    table.createdByUserId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> completedAt(DateTime value) =>
      _i1.ColumnValue(
        table.completedAt,
        value,
      );
}

class StoredImportExportJobTable extends _i1.Table<int?> {
  StoredImportExportJobTable({super.tableRelation})
    : super(tableName: 'import_export_jobs') {
    updateTable = StoredImportExportJobUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    format = _i1.ColumnString(
      'format',
      this,
    );
    summaryJson = _i1.ColumnString(
      'summaryJson',
      this,
    );
    createdByUserId = _i1.ColumnInt(
      'createdByUserId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    completedAt = _i1.ColumnDateTime(
      'completedAt',
      this,
    );
  }

  late final StoredImportExportJobUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnString type;

  late final _i1.ColumnString status;

  late final _i1.ColumnString format;

  late final _i1.ColumnString summaryJson;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime completedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    type,
    status,
    format,
    summaryJson,
    createdByUserId,
    createdAt,
    completedAt,
  ];
}

class StoredImportExportJobInclude extends _i1.IncludeObject {
  StoredImportExportJobInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredImportExportJob.t;
}

class StoredImportExportJobIncludeList extends _i1.IncludeList {
  StoredImportExportJobIncludeList._({
    _i1.WhereExpressionBuilder<StoredImportExportJobTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredImportExportJob.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredImportExportJob.t;
}

class StoredImportExportJobRepository {
  const StoredImportExportJobRepository._();

  /// Returns a list of [StoredImportExportJob]s matching the given query parameters.
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
  Future<List<StoredImportExportJob>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredImportExportJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredImportExportJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredImportExportJobTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredImportExportJob>(
      where: where?.call(StoredImportExportJob.t),
      orderBy: orderBy?.call(StoredImportExportJob.t),
      orderByList: orderByList?.call(StoredImportExportJob.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredImportExportJob] matching the given query parameters.
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
  Future<StoredImportExportJob?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredImportExportJobTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredImportExportJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredImportExportJobTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredImportExportJob>(
      where: where?.call(StoredImportExportJob.t),
      orderBy: orderBy?.call(StoredImportExportJob.t),
      orderByList: orderByList?.call(StoredImportExportJob.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredImportExportJob] by its [id] or null if no such row exists.
  Future<StoredImportExportJob?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredImportExportJob>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredImportExportJob]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredImportExportJob]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredImportExportJob>> insert(
    _i1.DatabaseSession session,
    List<StoredImportExportJob> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredImportExportJob>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredImportExportJob] and returns the inserted row.
  ///
  /// The returned [StoredImportExportJob] will have its `id` field set.
  Future<StoredImportExportJob> insertRow(
    _i1.DatabaseSession session,
    StoredImportExportJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredImportExportJob>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredImportExportJob]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredImportExportJob>> update(
    _i1.DatabaseSession session,
    List<StoredImportExportJob> rows, {
    _i1.ColumnSelections<StoredImportExportJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredImportExportJob>(
      rows,
      columns: columns?.call(StoredImportExportJob.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredImportExportJob]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredImportExportJob> updateRow(
    _i1.DatabaseSession session,
    StoredImportExportJob row, {
    _i1.ColumnSelections<StoredImportExportJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredImportExportJob>(
      row,
      columns: columns?.call(StoredImportExportJob.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredImportExportJob] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredImportExportJob?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredImportExportJobUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredImportExportJob>(
      id,
      columnValues: columnValues(StoredImportExportJob.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredImportExportJob]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredImportExportJob>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredImportExportJobUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredImportExportJobTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredImportExportJobTable>? orderBy,
    _i1.OrderByListBuilder<StoredImportExportJobTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredImportExportJob>(
      columnValues: columnValues(StoredImportExportJob.t.updateTable),
      where: where(StoredImportExportJob.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredImportExportJob.t),
      orderByList: orderByList?.call(StoredImportExportJob.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredImportExportJob]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredImportExportJob>> delete(
    _i1.DatabaseSession session,
    List<StoredImportExportJob> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredImportExportJob>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredImportExportJob].
  Future<StoredImportExportJob> deleteRow(
    _i1.DatabaseSession session,
    StoredImportExportJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredImportExportJob>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredImportExportJob>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredImportExportJobTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredImportExportJob>(
      where: where(StoredImportExportJob.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredImportExportJobTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredImportExportJob>(
      where: where?.call(StoredImportExportJob.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredImportExportJob] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredImportExportJobTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredImportExportJob>(
      where: where(StoredImportExportJob.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
