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

abstract class StoredWorkspaceEvent
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredWorkspaceEvent._({
    this.id,
    required this.workspaceId,
    required this.actorUserId,
    required this.entity,
    required this.action,
    this.entityId,
    this.payloadJson,
    required this.createdAt,
  });

  factory StoredWorkspaceEvent({
    int? id,
    required int workspaceId,
    required int actorUserId,
    required String entity,
    required String action,
    int? entityId,
    String? payloadJson,
    required DateTime createdAt,
  }) = _StoredWorkspaceEventImpl;

  factory StoredWorkspaceEvent.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredWorkspaceEvent(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      actorUserId: jsonSerialization['actorUserId'] as int,
      entity: jsonSerialization['entity'] as String,
      action: jsonSerialization['action'] as String,
      entityId: jsonSerialization['entityId'] as int?,
      payloadJson: jsonSerialization['payloadJson'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = StoredWorkspaceEventTable();

  static const db = StoredWorkspaceEventRepository._();

  @override
  int? id;

  int workspaceId;

  int actorUserId;

  String entity;

  String action;

  int? entityId;

  String? payloadJson;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredWorkspaceEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredWorkspaceEvent copyWith({
    int? id,
    int? workspaceId,
    int? actorUserId,
    String? entity,
    String? action,
    int? entityId,
    String? payloadJson,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredWorkspaceEvent',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'actorUserId': actorUserId,
      'entity': entity,
      'action': action,
      if (entityId != null) 'entityId': entityId,
      if (payloadJson != null) 'payloadJson': payloadJson,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredWorkspaceEvent',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'actorUserId': actorUserId,
      'entity': entity,
      'action': action,
      if (entityId != null) 'entityId': entityId,
      if (payloadJson != null) 'payloadJson': payloadJson,
      'createdAt': createdAt.toJson(),
    };
  }

  static StoredWorkspaceEventInclude include() {
    return StoredWorkspaceEventInclude._();
  }

  static StoredWorkspaceEventIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredWorkspaceEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceEventTable>? orderByList,
    StoredWorkspaceEventInclude? include,
  }) {
    return StoredWorkspaceEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceEvent.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredWorkspaceEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredWorkspaceEventImpl extends StoredWorkspaceEvent {
  _StoredWorkspaceEventImpl({
    int? id,
    required int workspaceId,
    required int actorUserId,
    required String entity,
    required String action,
    int? entityId,
    String? payloadJson,
    required DateTime createdAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         actorUserId: actorUserId,
         entity: entity,
         action: action,
         entityId: entityId,
         payloadJson: payloadJson,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [StoredWorkspaceEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredWorkspaceEvent copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    int? actorUserId,
    String? entity,
    String? action,
    Object? entityId = _Undefined,
    Object? payloadJson = _Undefined,
    DateTime? createdAt,
  }) {
    return StoredWorkspaceEvent(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      actorUserId: actorUserId ?? this.actorUserId,
      entity: entity ?? this.entity,
      action: action ?? this.action,
      entityId: entityId is int? ? entityId : this.entityId,
      payloadJson: payloadJson is String? ? payloadJson : this.payloadJson,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class StoredWorkspaceEventUpdateTable
    extends _i1.UpdateTable<StoredWorkspaceEventTable> {
  StoredWorkspaceEventUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<int, int> actorUserId(int value) => _i1.ColumnValue(
    table.actorUserId,
    value,
  );

  _i1.ColumnValue<String, String> entity(String value) => _i1.ColumnValue(
    table.entity,
    value,
  );

  _i1.ColumnValue<String, String> action(String value) => _i1.ColumnValue(
    table.action,
    value,
  );

  _i1.ColumnValue<int, int> entityId(int? value) => _i1.ColumnValue(
    table.entityId,
    value,
  );

  _i1.ColumnValue<String, String> payloadJson(String? value) => _i1.ColumnValue(
    table.payloadJson,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class StoredWorkspaceEventTable extends _i1.Table<int?> {
  StoredWorkspaceEventTable({super.tableRelation})
    : super(tableName: 'workspace_events') {
    updateTable = StoredWorkspaceEventUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    actorUserId = _i1.ColumnInt(
      'actorUserId',
      this,
    );
    entity = _i1.ColumnString(
      'entity',
      this,
    );
    action = _i1.ColumnString(
      'action',
      this,
    );
    entityId = _i1.ColumnInt(
      'entityId',
      this,
    );
    payloadJson = _i1.ColumnString(
      'payloadJson',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final StoredWorkspaceEventUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnInt actorUserId;

  late final _i1.ColumnString entity;

  late final _i1.ColumnString action;

  late final _i1.ColumnInt entityId;

  late final _i1.ColumnString payloadJson;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    actorUserId,
    entity,
    action,
    entityId,
    payloadJson,
    createdAt,
  ];
}

class StoredWorkspaceEventInclude extends _i1.IncludeObject {
  StoredWorkspaceEventInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceEvent.t;
}

class StoredWorkspaceEventIncludeList extends _i1.IncludeList {
  StoredWorkspaceEventIncludeList._({
    _i1.WhereExpressionBuilder<StoredWorkspaceEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredWorkspaceEvent.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceEvent.t;
}

class StoredWorkspaceEventRepository {
  const StoredWorkspaceEventRepository._();

  /// Returns a list of [StoredWorkspaceEvent]s matching the given query parameters.
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
  Future<List<StoredWorkspaceEvent>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceEventTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredWorkspaceEvent>(
      where: where?.call(StoredWorkspaceEvent.t),
      orderBy: orderBy?.call(StoredWorkspaceEvent.t),
      orderByList: orderByList?.call(StoredWorkspaceEvent.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredWorkspaceEvent] matching the given query parameters.
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
  Future<StoredWorkspaceEvent?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceEventTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceEventTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredWorkspaceEvent>(
      where: where?.call(StoredWorkspaceEvent.t),
      orderBy: orderBy?.call(StoredWorkspaceEvent.t),
      orderByList: orderByList?.call(StoredWorkspaceEvent.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredWorkspaceEvent] by its [id] or null if no such row exists.
  Future<StoredWorkspaceEvent?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredWorkspaceEvent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredWorkspaceEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredWorkspaceEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredWorkspaceEvent>> insert(
    _i1.DatabaseSession session,
    List<StoredWorkspaceEvent> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredWorkspaceEvent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredWorkspaceEvent] and returns the inserted row.
  ///
  /// The returned [StoredWorkspaceEvent] will have its `id` field set.
  Future<StoredWorkspaceEvent> insertRow(
    _i1.DatabaseSession session,
    StoredWorkspaceEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredWorkspaceEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredWorkspaceEvent>> update(
    _i1.DatabaseSession session,
    List<StoredWorkspaceEvent> rows, {
    _i1.ColumnSelections<StoredWorkspaceEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredWorkspaceEvent>(
      rows,
      columns: columns?.call(StoredWorkspaceEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredWorkspaceEvent> updateRow(
    _i1.DatabaseSession session,
    StoredWorkspaceEvent row, {
    _i1.ColumnSelections<StoredWorkspaceEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredWorkspaceEvent>(
      row,
      columns: columns?.call(StoredWorkspaceEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceEvent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredWorkspaceEvent?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceEventUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredWorkspaceEvent>(
      id,
      columnValues: columnValues(StoredWorkspaceEvent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceEvent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredWorkspaceEvent>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceEventUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredWorkspaceEventTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceEventTable>? orderBy,
    _i1.OrderByListBuilder<StoredWorkspaceEventTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredWorkspaceEvent>(
      columnValues: columnValues(StoredWorkspaceEvent.t.updateTable),
      where: where(StoredWorkspaceEvent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceEvent.t),
      orderByList: orderByList?.call(StoredWorkspaceEvent.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredWorkspaceEvent]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredWorkspaceEvent>> delete(
    _i1.DatabaseSession session,
    List<StoredWorkspaceEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredWorkspaceEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredWorkspaceEvent].
  Future<StoredWorkspaceEvent> deleteRow(
    _i1.DatabaseSession session,
    StoredWorkspaceEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredWorkspaceEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredWorkspaceEvent>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceEventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredWorkspaceEvent>(
      where: where(StoredWorkspaceEvent.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceEventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredWorkspaceEvent>(
      where: where?.call(StoredWorkspaceEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredWorkspaceEvent] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceEventTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredWorkspaceEvent>(
      where: where(StoredWorkspaceEvent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
