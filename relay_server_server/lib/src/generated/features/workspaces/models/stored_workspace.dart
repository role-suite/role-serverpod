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

abstract class StoredWorkspace
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredWorkspace._({
    this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredWorkspace({
    int? id,
    required String name,
    required String slug,
    required String type,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredWorkspaceImpl;

  factory StoredWorkspace.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredWorkspace(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      slug: jsonSerialization['slug'] as String,
      type: jsonSerialization['type'] as String,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredWorkspaceTable();

  static const db = StoredWorkspaceRepository._();

  @override
  int? id;

  String name;

  String slug;

  String type;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredWorkspace]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredWorkspace copyWith({
    int? id,
    String? name,
    String? slug,
    String? type,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredWorkspace',
      if (id != null) 'id': id,
      'name': name,
      'slug': slug,
      'type': type,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredWorkspace',
      if (id != null) 'id': id,
      'name': name,
      'slug': slug,
      'type': type,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredWorkspaceInclude include() {
    return StoredWorkspaceInclude._();
  }

  static StoredWorkspaceIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredWorkspaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceTable>? orderByList,
    StoredWorkspaceInclude? include,
  }) {
    return StoredWorkspaceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspace.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredWorkspace.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredWorkspaceImpl extends StoredWorkspace {
  _StoredWorkspaceImpl({
    int? id,
    required String name,
    required String slug,
    required String type,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         name: name,
         slug: slug,
         type: type,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredWorkspace]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredWorkspace copyWith({
    Object? id = _Undefined,
    String? name,
    String? slug,
    String? type,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredWorkspace(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      type: type ?? this.type,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredWorkspaceUpdateTable extends _i1.UpdateTable<StoredWorkspaceTable> {
  StoredWorkspaceUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> slug(String value) => _i1.ColumnValue(
    table.slug,
    value,
  );

  _i1.ColumnValue<String, String> type(String value) => _i1.ColumnValue(
    table.type,
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

class StoredWorkspaceTable extends _i1.Table<int?> {
  StoredWorkspaceTable({super.tableRelation}) : super(tableName: 'workspaces') {
    updateTable = StoredWorkspaceUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    slug = _i1.ColumnString(
      'slug',
      this,
    );
    type = _i1.ColumnString(
      'type',
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

  late final StoredWorkspaceUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString slug;

  late final _i1.ColumnString type;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    slug,
    type,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredWorkspaceInclude extends _i1.IncludeObject {
  StoredWorkspaceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredWorkspace.t;
}

class StoredWorkspaceIncludeList extends _i1.IncludeList {
  StoredWorkspaceIncludeList._({
    _i1.WhereExpressionBuilder<StoredWorkspaceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredWorkspace.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredWorkspace.t;
}

class StoredWorkspaceRepository {
  const StoredWorkspaceRepository._();

  /// Returns a list of [StoredWorkspace]s matching the given query parameters.
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
  Future<List<StoredWorkspace>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredWorkspace>(
      where: where?.call(StoredWorkspace.t),
      orderBy: orderBy?.call(StoredWorkspace.t),
      orderByList: orderByList?.call(StoredWorkspace.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredWorkspace] matching the given query parameters.
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
  Future<StoredWorkspace?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredWorkspace>(
      where: where?.call(StoredWorkspace.t),
      orderBy: orderBy?.call(StoredWorkspace.t),
      orderByList: orderByList?.call(StoredWorkspace.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredWorkspace] by its [id] or null if no such row exists.
  Future<StoredWorkspace?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredWorkspace>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredWorkspace]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredWorkspace]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredWorkspace>> insert(
    _i1.DatabaseSession session,
    List<StoredWorkspace> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredWorkspace>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredWorkspace] and returns the inserted row.
  ///
  /// The returned [StoredWorkspace] will have its `id` field set.
  Future<StoredWorkspace> insertRow(
    _i1.DatabaseSession session,
    StoredWorkspace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredWorkspace>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspace]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredWorkspace>> update(
    _i1.DatabaseSession session,
    List<StoredWorkspace> rows, {
    _i1.ColumnSelections<StoredWorkspaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredWorkspace>(
      rows,
      columns: columns?.call(StoredWorkspace.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspace]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredWorkspace> updateRow(
    _i1.DatabaseSession session,
    StoredWorkspace row, {
    _i1.ColumnSelections<StoredWorkspaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredWorkspace>(
      row,
      columns: columns?.call(StoredWorkspace.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspace] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredWorkspace?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredWorkspace>(
      id,
      columnValues: columnValues(StoredWorkspace.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspace]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredWorkspace>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredWorkspaceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceTable>? orderBy,
    _i1.OrderByListBuilder<StoredWorkspaceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredWorkspace>(
      columnValues: columnValues(StoredWorkspace.t.updateTable),
      where: where(StoredWorkspace.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspace.t),
      orderByList: orderByList?.call(StoredWorkspace.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredWorkspace]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredWorkspace>> delete(
    _i1.DatabaseSession session,
    List<StoredWorkspace> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredWorkspace>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredWorkspace].
  Future<StoredWorkspace> deleteRow(
    _i1.DatabaseSession session,
    StoredWorkspace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredWorkspace>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredWorkspace>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredWorkspace>(
      where: where(StoredWorkspace.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredWorkspace>(
      where: where?.call(StoredWorkspace.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredWorkspace] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredWorkspace>(
      where: where(StoredWorkspace.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
