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

abstract class StoredCollectionEndpointExample
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredCollectionEndpointExample._({
    this.id,
    required this.endpointId,
    required this.name,
    required this.statusCode,
    this.headersJson,
    this.body,
    required this.position,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredCollectionEndpointExample({
    int? id,
    required int endpointId,
    required String name,
    required int statusCode,
    String? headersJson,
    String? body,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredCollectionEndpointExampleImpl;

  factory StoredCollectionEndpointExample.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredCollectionEndpointExample(
      id: jsonSerialization['id'] as int?,
      endpointId: jsonSerialization['endpointId'] as int,
      name: jsonSerialization['name'] as String,
      statusCode: jsonSerialization['statusCode'] as int,
      headersJson: jsonSerialization['headersJson'] as String?,
      body: jsonSerialization['body'] as String?,
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

  static final t = StoredCollectionEndpointExampleTable();

  static const db = StoredCollectionEndpointExampleRepository._();

  @override
  int? id;

  int endpointId;

  String name;

  int statusCode;

  String? headersJson;

  String? body;

  int position;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredCollectionEndpointExample]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredCollectionEndpointExample copyWith({
    int? id,
    int? endpointId,
    String? name,
    int? statusCode,
    String? headersJson,
    String? body,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredCollectionEndpointExample',
      if (id != null) 'id': id,
      'endpointId': endpointId,
      'name': name,
      'statusCode': statusCode,
      if (headersJson != null) 'headersJson': headersJson,
      if (body != null) 'body': body,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredCollectionEndpointExample',
      if (id != null) 'id': id,
      'endpointId': endpointId,
      'name': name,
      'statusCode': statusCode,
      if (headersJson != null) 'headersJson': headersJson,
      if (body != null) 'body': body,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredCollectionEndpointExampleInclude include() {
    return StoredCollectionEndpointExampleInclude._();
  }

  static StoredCollectionEndpointExampleIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointExampleTable>? orderByList,
    StoredCollectionEndpointExampleInclude? include,
  }) {
    return StoredCollectionEndpointExampleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollectionEndpointExample.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredCollectionEndpointExample.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredCollectionEndpointExampleImpl
    extends StoredCollectionEndpointExample {
  _StoredCollectionEndpointExampleImpl({
    int? id,
    required int endpointId,
    required String name,
    required int statusCode,
    String? headersJson,
    String? body,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         endpointId: endpointId,
         name: name,
         statusCode: statusCode,
         headersJson: headersJson,
         body: body,
         position: position,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredCollectionEndpointExample]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredCollectionEndpointExample copyWith({
    Object? id = _Undefined,
    int? endpointId,
    String? name,
    int? statusCode,
    Object? headersJson = _Undefined,
    Object? body = _Undefined,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredCollectionEndpointExample(
      id: id is int? ? id : this.id,
      endpointId: endpointId ?? this.endpointId,
      name: name ?? this.name,
      statusCode: statusCode ?? this.statusCode,
      headersJson: headersJson is String? ? headersJson : this.headersJson,
      body: body is String? ? body : this.body,
      position: position ?? this.position,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredCollectionEndpointExampleUpdateTable
    extends _i1.UpdateTable<StoredCollectionEndpointExampleTable> {
  StoredCollectionEndpointExampleUpdateTable(super.table);

  _i1.ColumnValue<int, int> endpointId(int value) => _i1.ColumnValue(
    table.endpointId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<int, int> statusCode(int value) => _i1.ColumnValue(
    table.statusCode,
    value,
  );

  _i1.ColumnValue<String, String> headersJson(String? value) => _i1.ColumnValue(
    table.headersJson,
    value,
  );

  _i1.ColumnValue<String, String> body(String? value) => _i1.ColumnValue(
    table.body,
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

class StoredCollectionEndpointExampleTable extends _i1.Table<int?> {
  StoredCollectionEndpointExampleTable({super.tableRelation})
    : super(tableName: 'collection_endpoint_examples') {
    updateTable = StoredCollectionEndpointExampleUpdateTable(this);
    endpointId = _i1.ColumnInt(
      'endpointId',
      this,
    );
    name = _i1.ColumnString(
      'name',
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
    body = _i1.ColumnString(
      'body',
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

  late final StoredCollectionEndpointExampleUpdateTable updateTable;

  late final _i1.ColumnInt endpointId;

  late final _i1.ColumnString name;

  late final _i1.ColumnInt statusCode;

  late final _i1.ColumnString headersJson;

  late final _i1.ColumnString body;

  late final _i1.ColumnInt position;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    endpointId,
    name,
    statusCode,
    headersJson,
    body,
    position,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredCollectionEndpointExampleInclude extends _i1.IncludeObject {
  StoredCollectionEndpointExampleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredCollectionEndpointExample.t;
}

class StoredCollectionEndpointExampleIncludeList extends _i1.IncludeList {
  StoredCollectionEndpointExampleIncludeList._({
    _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredCollectionEndpointExample.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredCollectionEndpointExample.t;
}

class StoredCollectionEndpointExampleRepository {
  const StoredCollectionEndpointExampleRepository._();

  /// Returns a list of [StoredCollectionEndpointExample]s matching the given query parameters.
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
  Future<List<StoredCollectionEndpointExample>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointExampleTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredCollectionEndpointExample>(
      where: where?.call(StoredCollectionEndpointExample.t),
      orderBy: orderBy?.call(StoredCollectionEndpointExample.t),
      orderByList: orderByList?.call(StoredCollectionEndpointExample.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredCollectionEndpointExample] matching the given query parameters.
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
  Future<StoredCollectionEndpointExample?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointExampleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointExampleTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredCollectionEndpointExample>(
      where: where?.call(StoredCollectionEndpointExample.t),
      orderBy: orderBy?.call(StoredCollectionEndpointExample.t),
      orderByList: orderByList?.call(StoredCollectionEndpointExample.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredCollectionEndpointExample] by its [id] or null if no such row exists.
  Future<StoredCollectionEndpointExample?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredCollectionEndpointExample>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredCollectionEndpointExample]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredCollectionEndpointExample]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredCollectionEndpointExample>> insert(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpointExample> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredCollectionEndpointExample>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredCollectionEndpointExample] and returns the inserted row.
  ///
  /// The returned [StoredCollectionEndpointExample] will have its `id` field set.
  Future<StoredCollectionEndpointExample> insertRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpointExample row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredCollectionEndpointExample>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollectionEndpointExample]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredCollectionEndpointExample>> update(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpointExample> rows, {
    _i1.ColumnSelections<StoredCollectionEndpointExampleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredCollectionEndpointExample>(
      rows,
      columns: columns?.call(StoredCollectionEndpointExample.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollectionEndpointExample]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredCollectionEndpointExample> updateRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpointExample row, {
    _i1.ColumnSelections<StoredCollectionEndpointExampleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredCollectionEndpointExample>(
      row,
      columns: columns?.call(StoredCollectionEndpointExample.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollectionEndpointExample] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredCollectionEndpointExample?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<
      StoredCollectionEndpointExampleUpdateTable
    >
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredCollectionEndpointExample>(
      id,
      columnValues: columnValues(StoredCollectionEndpointExample.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollectionEndpointExample]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredCollectionEndpointExample>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<
      StoredCollectionEndpointExampleUpdateTable
    >
    columnValues,
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>
    where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointExampleTable>? orderBy,
    _i1.OrderByListBuilder<StoredCollectionEndpointExampleTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredCollectionEndpointExample>(
      columnValues: columnValues(StoredCollectionEndpointExample.t.updateTable),
      where: where(StoredCollectionEndpointExample.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollectionEndpointExample.t),
      orderByList: orderByList?.call(StoredCollectionEndpointExample.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredCollectionEndpointExample]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredCollectionEndpointExample>> delete(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpointExample> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredCollectionEndpointExample>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredCollectionEndpointExample].
  Future<StoredCollectionEndpointExample> deleteRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpointExample row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredCollectionEndpointExample>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredCollectionEndpointExample>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>
    where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredCollectionEndpointExample>(
      where: where(StoredCollectionEndpointExample.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredCollectionEndpointExample>(
      where: where?.call(StoredCollectionEndpointExample.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredCollectionEndpointExample] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointExampleTable>
    where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredCollectionEndpointExample>(
      where: where(StoredCollectionEndpointExample.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
