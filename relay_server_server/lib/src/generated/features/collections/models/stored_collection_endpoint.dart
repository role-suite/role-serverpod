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

abstract class StoredCollectionEndpoint
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredCollectionEndpoint._({
    this.id,
    required this.collectionId,
    this.folderId,
    required this.name,
    required this.method,
    required this.url,
    this.headersJson,
    this.queryParamsJson,
    this.bodyJson,
    this.authJson,
    required this.position,
    required this.createdByUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredCollectionEndpoint({
    int? id,
    required int collectionId,
    int? folderId,
    required String name,
    required String method,
    required String url,
    String? headersJson,
    String? queryParamsJson,
    String? bodyJson,
    String? authJson,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredCollectionEndpointImpl;

  factory StoredCollectionEndpoint.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredCollectionEndpoint(
      id: jsonSerialization['id'] as int?,
      collectionId: jsonSerialization['collectionId'] as int,
      folderId: jsonSerialization['folderId'] as int?,
      name: jsonSerialization['name'] as String,
      method: jsonSerialization['method'] as String,
      url: jsonSerialization['url'] as String,
      headersJson: jsonSerialization['headersJson'] as String?,
      queryParamsJson: jsonSerialization['queryParamsJson'] as String?,
      bodyJson: jsonSerialization['bodyJson'] as String?,
      authJson: jsonSerialization['authJson'] as String?,
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

  static final t = StoredCollectionEndpointTable();

  static const db = StoredCollectionEndpointRepository._();

  @override
  int? id;

  int collectionId;

  int? folderId;

  String name;

  String method;

  String url;

  String? headersJson;

  String? queryParamsJson;

  String? bodyJson;

  String? authJson;

  int position;

  int createdByUserId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredCollectionEndpoint]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredCollectionEndpoint copyWith({
    int? id,
    int? collectionId,
    int? folderId,
    String? name,
    String? method,
    String? url,
    String? headersJson,
    String? queryParamsJson,
    String? bodyJson,
    String? authJson,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredCollectionEndpoint',
      if (id != null) 'id': id,
      'collectionId': collectionId,
      if (folderId != null) 'folderId': folderId,
      'name': name,
      'method': method,
      'url': url,
      if (headersJson != null) 'headersJson': headersJson,
      if (queryParamsJson != null) 'queryParamsJson': queryParamsJson,
      if (bodyJson != null) 'bodyJson': bodyJson,
      if (authJson != null) 'authJson': authJson,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredCollectionEndpoint',
      if (id != null) 'id': id,
      'collectionId': collectionId,
      if (folderId != null) 'folderId': folderId,
      'name': name,
      'method': method,
      'url': url,
      if (headersJson != null) 'headersJson': headersJson,
      if (queryParamsJson != null) 'queryParamsJson': queryParamsJson,
      if (bodyJson != null) 'bodyJson': bodyJson,
      if (authJson != null) 'authJson': authJson,
      'position': position,
      'createdByUserId': createdByUserId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredCollectionEndpointInclude include() {
    return StoredCollectionEndpointInclude._();
  }

  static StoredCollectionEndpointIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredCollectionEndpointTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointTable>? orderByList,
    StoredCollectionEndpointInclude? include,
  }) {
    return StoredCollectionEndpointIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollectionEndpoint.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredCollectionEndpoint.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredCollectionEndpointImpl extends StoredCollectionEndpoint {
  _StoredCollectionEndpointImpl({
    int? id,
    required int collectionId,
    int? folderId,
    required String name,
    required String method,
    required String url,
    String? headersJson,
    String? queryParamsJson,
    String? bodyJson,
    String? authJson,
    required int position,
    required int createdByUserId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         collectionId: collectionId,
         folderId: folderId,
         name: name,
         method: method,
         url: url,
         headersJson: headersJson,
         queryParamsJson: queryParamsJson,
         bodyJson: bodyJson,
         authJson: authJson,
         position: position,
         createdByUserId: createdByUserId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredCollectionEndpoint]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredCollectionEndpoint copyWith({
    Object? id = _Undefined,
    int? collectionId,
    Object? folderId = _Undefined,
    String? name,
    String? method,
    String? url,
    Object? headersJson = _Undefined,
    Object? queryParamsJson = _Undefined,
    Object? bodyJson = _Undefined,
    Object? authJson = _Undefined,
    int? position,
    int? createdByUserId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredCollectionEndpoint(
      id: id is int? ? id : this.id,
      collectionId: collectionId ?? this.collectionId,
      folderId: folderId is int? ? folderId : this.folderId,
      name: name ?? this.name,
      method: method ?? this.method,
      url: url ?? this.url,
      headersJson: headersJson is String? ? headersJson : this.headersJson,
      queryParamsJson: queryParamsJson is String?
          ? queryParamsJson
          : this.queryParamsJson,
      bodyJson: bodyJson is String? ? bodyJson : this.bodyJson,
      authJson: authJson is String? ? authJson : this.authJson,
      position: position ?? this.position,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredCollectionEndpointUpdateTable
    extends _i1.UpdateTable<StoredCollectionEndpointTable> {
  StoredCollectionEndpointUpdateTable(super.table);

  _i1.ColumnValue<int, int> collectionId(int value) => _i1.ColumnValue(
    table.collectionId,
    value,
  );

  _i1.ColumnValue<int, int> folderId(int? value) => _i1.ColumnValue(
    table.folderId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
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

  _i1.ColumnValue<String, String> headersJson(String? value) => _i1.ColumnValue(
    table.headersJson,
    value,
  );

  _i1.ColumnValue<String, String> queryParamsJson(String? value) =>
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

class StoredCollectionEndpointTable extends _i1.Table<int?> {
  StoredCollectionEndpointTable({super.tableRelation})
    : super(tableName: 'collection_endpoints') {
    updateTable = StoredCollectionEndpointUpdateTable(this);
    collectionId = _i1.ColumnInt(
      'collectionId',
      this,
    );
    folderId = _i1.ColumnInt(
      'folderId',
      this,
    );
    name = _i1.ColumnString(
      'name',
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

  late final StoredCollectionEndpointUpdateTable updateTable;

  late final _i1.ColumnInt collectionId;

  late final _i1.ColumnInt folderId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString method;

  late final _i1.ColumnString url;

  late final _i1.ColumnString headersJson;

  late final _i1.ColumnString queryParamsJson;

  late final _i1.ColumnString bodyJson;

  late final _i1.ColumnString authJson;

  late final _i1.ColumnInt position;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    collectionId,
    folderId,
    name,
    method,
    url,
    headersJson,
    queryParamsJson,
    bodyJson,
    authJson,
    position,
    createdByUserId,
    createdAt,
    updatedAt,
  ];
}

class StoredCollectionEndpointInclude extends _i1.IncludeObject {
  StoredCollectionEndpointInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredCollectionEndpoint.t;
}

class StoredCollectionEndpointIncludeList extends _i1.IncludeList {
  StoredCollectionEndpointIncludeList._({
    _i1.WhereExpressionBuilder<StoredCollectionEndpointTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredCollectionEndpoint.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredCollectionEndpoint.t;
}

class StoredCollectionEndpointRepository {
  const StoredCollectionEndpointRepository._();

  /// Returns a list of [StoredCollectionEndpoint]s matching the given query parameters.
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
  Future<List<StoredCollectionEndpoint>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredCollectionEndpoint>(
      where: where?.call(StoredCollectionEndpoint.t),
      orderBy: orderBy?.call(StoredCollectionEndpoint.t),
      orderByList: orderByList?.call(StoredCollectionEndpoint.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredCollectionEndpoint] matching the given query parameters.
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
  Future<StoredCollectionEndpoint?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredCollectionEndpointTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredCollectionEndpoint>(
      where: where?.call(StoredCollectionEndpoint.t),
      orderBy: orderBy?.call(StoredCollectionEndpoint.t),
      orderByList: orderByList?.call(StoredCollectionEndpoint.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredCollectionEndpoint] by its [id] or null if no such row exists.
  Future<StoredCollectionEndpoint?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredCollectionEndpoint>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredCollectionEndpoint]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredCollectionEndpoint]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredCollectionEndpoint>> insert(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpoint> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredCollectionEndpoint>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredCollectionEndpoint] and returns the inserted row.
  ///
  /// The returned [StoredCollectionEndpoint] will have its `id` field set.
  Future<StoredCollectionEndpoint> insertRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpoint row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredCollectionEndpoint>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollectionEndpoint]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredCollectionEndpoint>> update(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpoint> rows, {
    _i1.ColumnSelections<StoredCollectionEndpointTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredCollectionEndpoint>(
      rows,
      columns: columns?.call(StoredCollectionEndpoint.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollectionEndpoint]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredCollectionEndpoint> updateRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpoint row, {
    _i1.ColumnSelections<StoredCollectionEndpointTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredCollectionEndpoint>(
      row,
      columns: columns?.call(StoredCollectionEndpoint.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredCollectionEndpoint] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredCollectionEndpoint?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredCollectionEndpointUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredCollectionEndpoint>(
      id,
      columnValues: columnValues(StoredCollectionEndpoint.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredCollectionEndpoint]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredCollectionEndpoint>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredCollectionEndpointUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredCollectionEndpointTable>? orderBy,
    _i1.OrderByListBuilder<StoredCollectionEndpointTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredCollectionEndpoint>(
      columnValues: columnValues(StoredCollectionEndpoint.t.updateTable),
      where: where(StoredCollectionEndpoint.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredCollectionEndpoint.t),
      orderByList: orderByList?.call(StoredCollectionEndpoint.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredCollectionEndpoint]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredCollectionEndpoint>> delete(
    _i1.DatabaseSession session,
    List<StoredCollectionEndpoint> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredCollectionEndpoint>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredCollectionEndpoint].
  Future<StoredCollectionEndpoint> deleteRow(
    _i1.DatabaseSession session,
    StoredCollectionEndpoint row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredCollectionEndpoint>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredCollectionEndpoint>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredCollectionEndpoint>(
      where: where(StoredCollectionEndpoint.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredCollectionEndpointTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredCollectionEndpoint>(
      where: where?.call(StoredCollectionEndpoint.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredCollectionEndpoint] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredCollectionEndpointTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredCollectionEndpoint>(
      where: where(StoredCollectionEndpoint.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
