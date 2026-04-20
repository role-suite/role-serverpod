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

abstract class StoredEnvironmentVariable
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredEnvironmentVariable._({
    this.id,
    required this.environmentId,
    required this.key,
    required this.value,
    required this.enabled,
    required this.isSecret,
    required this.position,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredEnvironmentVariable({
    int? id,
    required int environmentId,
    required String key,
    required String value,
    required bool enabled,
    required bool isSecret,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredEnvironmentVariableImpl;

  factory StoredEnvironmentVariable.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredEnvironmentVariable(
      id: jsonSerialization['id'] as int?,
      environmentId: jsonSerialization['environmentId'] as int,
      key: jsonSerialization['key'] as String,
      value: jsonSerialization['value'] as String,
      enabled: _i1.BoolJsonExtension.fromJson(jsonSerialization['enabled']),
      isSecret: _i1.BoolJsonExtension.fromJson(jsonSerialization['isSecret']),
      position: jsonSerialization['position'] as int,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredEnvironmentVariableTable();

  static const db = StoredEnvironmentVariableRepository._();

  @override
  int? id;

  int environmentId;

  String key;

  String value;

  bool enabled;

  bool isSecret;

  int position;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredEnvironmentVariable]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredEnvironmentVariable copyWith({
    int? id,
    int? environmentId,
    String? key,
    String? value,
    bool? enabled,
    bool? isSecret,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredEnvironmentVariable',
      if (id != null) 'id': id,
      'environmentId': environmentId,
      'key': key,
      'value': value,
      'enabled': enabled,
      'isSecret': isSecret,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredEnvironmentVariable',
      if (id != null) 'id': id,
      'environmentId': environmentId,
      'key': key,
      'value': value,
      'enabled': enabled,
      'isSecret': isSecret,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredEnvironmentVariableInclude include() {
    return StoredEnvironmentVariableInclude._();
  }

  static StoredEnvironmentVariableIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentVariableTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentVariableTable>? orderByList,
    StoredEnvironmentVariableInclude? include,
  }) {
    return StoredEnvironmentVariableIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredEnvironmentVariable.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredEnvironmentVariable.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredEnvironmentVariableImpl extends StoredEnvironmentVariable {
  _StoredEnvironmentVariableImpl({
    int? id,
    required int environmentId,
    required String key,
    required String value,
    required bool enabled,
    required bool isSecret,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         environmentId: environmentId,
         key: key,
         value: value,
         enabled: enabled,
         isSecret: isSecret,
         position: position,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredEnvironmentVariable]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredEnvironmentVariable copyWith({
    Object? id = _Undefined,
    int? environmentId,
    String? key,
    String? value,
    bool? enabled,
    bool? isSecret,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredEnvironmentVariable(
      id: id is int? ? id : this.id,
      environmentId: environmentId ?? this.environmentId,
      key: key ?? this.key,
      value: value ?? this.value,
      enabled: enabled ?? this.enabled,
      isSecret: isSecret ?? this.isSecret,
      position: position ?? this.position,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredEnvironmentVariableUpdateTable
    extends _i1.UpdateTable<StoredEnvironmentVariableTable> {
  StoredEnvironmentVariableUpdateTable(super.table);

  _i1.ColumnValue<int, int> environmentId(int value) => _i1.ColumnValue(
    table.environmentId,
    value,
  );

  _i1.ColumnValue<String, String> key(String value) => _i1.ColumnValue(
    table.key,
    value,
  );

  _i1.ColumnValue<String, String> value(String value) => _i1.ColumnValue(
    table.value,
    value,
  );

  _i1.ColumnValue<bool, bool> enabled(bool value) => _i1.ColumnValue(
    table.enabled,
    value,
  );

  _i1.ColumnValue<bool, bool> isSecret(bool value) => _i1.ColumnValue(
    table.isSecret,
    value,
  );

  _i1.ColumnValue<int, int> position(int value) => _i1.ColumnValue(
    table.position,
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

class StoredEnvironmentVariableTable extends _i1.Table<int?> {
  StoredEnvironmentVariableTable({super.tableRelation})
    : super(tableName: 'environment_variables') {
    updateTable = StoredEnvironmentVariableUpdateTable(this);
    environmentId = _i1.ColumnInt(
      'environmentId',
      this,
    );
    key = _i1.ColumnString(
      'key',
      this,
    );
    value = _i1.ColumnString(
      'value',
      this,
    );
    enabled = _i1.ColumnBool(
      'enabled',
      this,
    );
    isSecret = _i1.ColumnBool(
      'isSecret',
      this,
    );
    position = _i1.ColumnInt(
      'position',
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

  late final StoredEnvironmentVariableUpdateTable updateTable;

  late final _i1.ColumnInt environmentId;

  late final _i1.ColumnString key;

  late final _i1.ColumnString value;

  late final _i1.ColumnBool enabled;

  late final _i1.ColumnBool isSecret;

  late final _i1.ColumnInt position;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    environmentId,
    key,
    value,
    enabled,
    isSecret,
    position,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredEnvironmentVariableInclude extends _i1.IncludeObject {
  StoredEnvironmentVariableInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredEnvironmentVariable.t;
}

class StoredEnvironmentVariableIncludeList extends _i1.IncludeList {
  StoredEnvironmentVariableIncludeList._({
    _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredEnvironmentVariable.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredEnvironmentVariable.t;
}

class StoredEnvironmentVariableRepository {
  const StoredEnvironmentVariableRepository._();

  /// Returns a list of [StoredEnvironmentVariable]s matching the given query parameters.
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
  Future<List<StoredEnvironmentVariable>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentVariableTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentVariableTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredEnvironmentVariable>(
      where: where?.call(StoredEnvironmentVariable.t),
      orderBy: orderBy?.call(StoredEnvironmentVariable.t),
      orderByList: orderByList?.call(StoredEnvironmentVariable.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredEnvironmentVariable] matching the given query parameters.
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
  Future<StoredEnvironmentVariable?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentVariableTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredEnvironmentVariableTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredEnvironmentVariable>(
      where: where?.call(StoredEnvironmentVariable.t),
      orderBy: orderBy?.call(StoredEnvironmentVariable.t),
      orderByList: orderByList?.call(StoredEnvironmentVariable.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredEnvironmentVariable] by its [id] or null if no such row exists.
  Future<StoredEnvironmentVariable?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredEnvironmentVariable>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredEnvironmentVariable]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredEnvironmentVariable]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredEnvironmentVariable>> insert(
    _i1.DatabaseSession session,
    List<StoredEnvironmentVariable> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredEnvironmentVariable>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredEnvironmentVariable] and returns the inserted row.
  ///
  /// The returned [StoredEnvironmentVariable] will have its `id` field set.
  Future<StoredEnvironmentVariable> insertRow(
    _i1.DatabaseSession session,
    StoredEnvironmentVariable row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredEnvironmentVariable>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredEnvironmentVariable]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredEnvironmentVariable>> update(
    _i1.DatabaseSession session,
    List<StoredEnvironmentVariable> rows, {
    _i1.ColumnSelections<StoredEnvironmentVariableTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredEnvironmentVariable>(
      rows,
      columns: columns?.call(StoredEnvironmentVariable.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredEnvironmentVariable]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredEnvironmentVariable> updateRow(
    _i1.DatabaseSession session,
    StoredEnvironmentVariable row, {
    _i1.ColumnSelections<StoredEnvironmentVariableTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredEnvironmentVariable>(
      row,
      columns: columns?.call(StoredEnvironmentVariable.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredEnvironmentVariable] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredEnvironmentVariable?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredEnvironmentVariableUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredEnvironmentVariable>(
      id,
      columnValues: columnValues(StoredEnvironmentVariable.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredEnvironmentVariable]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredEnvironmentVariable>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredEnvironmentVariableUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredEnvironmentVariableTable>? orderBy,
    _i1.OrderByListBuilder<StoredEnvironmentVariableTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredEnvironmentVariable>(
      columnValues: columnValues(StoredEnvironmentVariable.t.updateTable),
      where: where(StoredEnvironmentVariable.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredEnvironmentVariable.t),
      orderByList: orderByList?.call(StoredEnvironmentVariable.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredEnvironmentVariable]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredEnvironmentVariable>> delete(
    _i1.DatabaseSession session,
    List<StoredEnvironmentVariable> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredEnvironmentVariable>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredEnvironmentVariable].
  Future<StoredEnvironmentVariable> deleteRow(
    _i1.DatabaseSession session,
    StoredEnvironmentVariable row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredEnvironmentVariable>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredEnvironmentVariable>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredEnvironmentVariable>(
      where: where(StoredEnvironmentVariable.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredEnvironmentVariable>(
      where: where?.call(StoredEnvironmentVariable.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredEnvironmentVariable] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredEnvironmentVariableTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredEnvironmentVariable>(
      where: where(StoredEnvironmentVariable.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
