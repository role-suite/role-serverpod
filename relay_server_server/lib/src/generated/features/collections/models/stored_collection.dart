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

abstract class StoredCollection
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredCollection._({
    this.id,
    required this.workspaceId,
    required this.name,
    this.description,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredCollection({
    int? id,
    required int workspaceId,
    required String name,
    String? description,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredCollectionImpl;

  factory StoredCollection.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredCollection(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredCollectionTable();

  static const db = StoredCollectionRepository._();

  @override
  int? id;

  int workspaceId;

  String name;

  String? description;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredCollection]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredCollection copyWith({
    int? id,
    int? workspaceId,
    String? name,
    String? description,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredCollection',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'name': name,
      if (description != null) 'description': description,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredCollection',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'name': name,
      if (description != null) 'description': description,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredCollectionInclude include() {
    return StoredCollectionInclude._();
  }

  static StoredCollectionIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredCollectionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionTable>? orderByList,
    StoredCollectionInclude? include,
  }) {
    return StoredCollectionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollection.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredCollection.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredCollectionImpl extends StoredCollection {
  _StoredCollectionImpl({
    int? id,
    required int workspaceId,
    required String name,
    String? description,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         name: name,
         description: description,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredCollection]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredCollection copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    String? name,
    Object? description = _Undefined,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredCollection(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredCollectionUpdateTable
    extends _i1.UpdateTable<StoredCollectionTable> {
  StoredCollectionUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
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

class StoredCollectionTable extends _i1.Table<int?> {
  StoredCollectionTable({super.tableRelation})
    : super(tableName: 'collections') {
    updateTable = StoredCollectionUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
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

  late final StoredCollectionUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    name,
    description,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredCollectionInclude extends _i1.IncludeObject {
  StoredCollectionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredCollection.t;
}

class StoredCollectionIncludeList extends _i1.IncludeList {
  StoredCollectionIncludeList._({
    _i1.WhereExpressionBuilder<StoredCollectionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredCollection.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredCollection.t;
}

class StoredCollectionRepository {
  const StoredCollectionRepository._();

  /// Returns a list of [StoredCollection]s matching the given query parameters.
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
  Future<List<StoredCollection>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredCollection>(
      where: where?.call(StoredCollection.t),
      orderBy: orderBy?.call(StoredCollection.t),
      orderByList: orderByList?.call(StoredCollection.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredCollection] matching the given query parameters.
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
  Future<StoredCollection?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredCollection>(
      where: where?.call(StoredCollection.t),
      orderBy: orderBy?.call(StoredCollection.t),
      orderByList: orderByList?.call(StoredCollection.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredCollection] by its [id] or null if no such row exists.
  Future<StoredCollection?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredCollection>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredCollection]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredCollection]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredCollection>> insert(
    _i1.DatabaseSession session,
    List<StoredCollection> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredCollection>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredCollection] and returns the inserted row.
  ///
  /// The returned [StoredCollection] will have its `id` field set.
  Future<StoredCollection> insertRow(
    _i1.DatabaseSession session,
    StoredCollection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredCollection>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollection]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredCollection>> update(
    _i1.DatabaseSession session,
    List<StoredCollection> rows, {
    _i1.ColumnSelections<StoredCollectionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredCollection>(
      rows,
      columns: columns?.call(StoredCollection.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollection]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredCollection> updateRow(
    _i1.DatabaseSession session,
    StoredCollection row, {
    _i1.ColumnSelections<StoredCollectionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredCollection>(
      row,
      columns: columns?.call(StoredCollection.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollection] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredCollection?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredCollectionUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredCollection>(
      id,
      columnValues: columnValues(StoredCollection.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollection]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredCollection>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredCollectionUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredCollectionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionTable>? orderBy,
    _i1.OrderByListBuilder<StoredCollectionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredCollection>(
      columnValues: columnValues(StoredCollection.t.updateTable),
      where: where(StoredCollection.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollection.t),
      orderByList: orderByList?.call(StoredCollection.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredCollection]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredCollection>> delete(
    _i1.DatabaseSession session,
    List<StoredCollection> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredCollection>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredCollection].
  Future<StoredCollection> deleteRow(
    _i1.DatabaseSession session,
    StoredCollection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredCollection>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredCollection>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredCollection>(
      where: where(StoredCollection.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredCollection>(
      where: where?.call(StoredCollection.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredCollection] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredCollection>(
      where: where(StoredCollection.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
