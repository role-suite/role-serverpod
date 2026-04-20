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

abstract class StoredEnvironment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredEnvironment._({
    this.id,
    required this.workspaceId,
    required this.name,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredEnvironment({
    int? id,
    required int workspaceId,
    required String name,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredEnvironmentImpl;

  factory StoredEnvironment.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredEnvironment(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      name: jsonSerialization['name'] as String,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredEnvironmentTable();

  static const db = StoredEnvironmentRepository._();

  @override
  int? id;

  int workspaceId;

  String name;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredEnvironment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredEnvironment copyWith({
    int? id,
    int? workspaceId,
    String? name,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredEnvironment',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'name': name,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredEnvironment',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'name': name,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredEnvironmentInclude include() {
    return StoredEnvironmentInclude._();
  }

  static StoredEnvironmentIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredEnvironmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentTable>? orderByList,
    StoredEnvironmentInclude? include,
  }) {
    return StoredEnvironmentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredEnvironment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredEnvironment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredEnvironmentImpl extends StoredEnvironment {
  _StoredEnvironmentImpl({
    int? id,
    required int workspaceId,
    required String name,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         name: name,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredEnvironment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredEnvironment copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    String? name,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredEnvironment(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      name: name ?? this.name,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredEnvironmentUpdateTable
    extends _i1.UpdateTable<StoredEnvironmentTable> {
  StoredEnvironmentUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
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

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class StoredEnvironmentTable extends _i1.Table<int?> {
  StoredEnvironmentTable({super.tableRelation})
    : super(tableName: 'environments') {
    updateTable = StoredEnvironmentUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    name = _i1.ColumnString(
      'name',
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
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final StoredEnvironmentUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnString name;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    name,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredEnvironmentInclude extends _i1.IncludeObject {
  StoredEnvironmentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredEnvironment.t;
}

class StoredEnvironmentIncludeList extends _i1.IncludeList {
  StoredEnvironmentIncludeList._({
    _i1.WhereExpressionBuilder<StoredEnvironmentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredEnvironment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredEnvironment.t;
}

class StoredEnvironmentRepository {
  const StoredEnvironmentRepository._();

  /// Returns a list of [StoredEnvironment]s matching the given query parameters.
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
  Future<List<StoredEnvironment>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredEnvironment>(
      where: where?.call(StoredEnvironment.t),
      orderBy: orderBy?.call(StoredEnvironment.t),
      orderByList: orderByList?.call(StoredEnvironment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredEnvironment] matching the given query parameters.
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
  Future<StoredEnvironment?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredEnvironment>(
      where: where?.call(StoredEnvironment.t),
      orderBy: orderBy?.call(StoredEnvironment.t),
      orderByList: orderByList?.call(StoredEnvironment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredEnvironment] by its [id] or null if no such row exists.
  Future<StoredEnvironment?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredEnvironment>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredEnvironment]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredEnvironment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredEnvironment>> insert(
    _i1.DatabaseSession session,
    List<StoredEnvironment> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredEnvironment>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredEnvironment] and returns the inserted row.
  ///
  /// The returned [StoredEnvironment] will have its `id` field set.
  Future<StoredEnvironment> insertRow(
    _i1.DatabaseSession session,
    StoredEnvironment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredEnvironment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredEnvironment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredEnvironment>> update(
    _i1.DatabaseSession session,
    List<StoredEnvironment> rows, {
    _i1.ColumnSelections<StoredEnvironmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredEnvironment>(
      rows,
      columns: columns?.call(StoredEnvironment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredEnvironment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredEnvironment> updateRow(
    _i1.DatabaseSession session,
    StoredEnvironment row, {
    _i1.ColumnSelections<StoredEnvironmentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredEnvironment>(
      row,
      columns: columns?.call(StoredEnvironment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredEnvironment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredEnvironment?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredEnvironmentUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredEnvironment>(
      id,
      columnValues: columnValues(StoredEnvironment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredEnvironment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredEnvironment>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredEnvironmentUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredEnvironmentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentTable>? orderBy,
    _i1.OrderByListBuilder<StoredEnvironmentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredEnvironment>(
      columnValues: columnValues(StoredEnvironment.t.updateTable),
      where: where(StoredEnvironment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredEnvironment.t),
      orderByList: orderByList?.call(StoredEnvironment.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredEnvironment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredEnvironment>> delete(
    _i1.DatabaseSession session,
    List<StoredEnvironment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredEnvironment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredEnvironment].
  Future<StoredEnvironment> deleteRow(
    _i1.DatabaseSession session,
    StoredEnvironment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredEnvironment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredEnvironment>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredEnvironmentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredEnvironment>(
      where: where(StoredEnvironment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredEnvironment>(
      where: where?.call(StoredEnvironment.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredEnvironment] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredEnvironmentTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredEnvironment>(
      where: where(StoredEnvironment.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
