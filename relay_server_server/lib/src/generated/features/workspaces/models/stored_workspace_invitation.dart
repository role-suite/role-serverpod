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

abstract class StoredWorkspaceInvitation
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredWorkspaceInvitation._({
    this.id,
    required this.workspaceId,
    required this.email,
    required this.role,
    required this.status,
    required this.invitationTokenHash,
    required this.createdByUserId,
    required this.expiresAt,
    required this.createdAt,
    this.acceptedAt,
  });

  factory StoredWorkspaceInvitation({
    int? id,
    required int workspaceId,
    required String email,
    required String role,
    required String status,
    required String invitationTokenHash,
    required int createdByUserId,
    required DateTime expiresAt,
    required DateTime createdAt,
    DateTime? acceptedAt,
  }) = _StoredWorkspaceInvitationImpl;

  factory StoredWorkspaceInvitation.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return StoredWorkspaceInvitation(
      id: jsonSerialization['id'] as int?,
      workspaceId: jsonSerialization['workspaceId'] as int,
      email: jsonSerialization['email'] as String,
      role: jsonSerialization['role'] as String,
      status: jsonSerialization['status'] as String,
      invitationTokenHash: jsonSerialization['invitationTokenHash'] as String,
      createdByUserId: jsonSerialization['createdByUserId'] as int,
      expiresAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      acceptedAt: jsonSerialization['acceptedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['acceptedAt']),
    );
  }

  static final t = StoredWorkspaceInvitationTable();

  static const db = StoredWorkspaceInvitationRepository._();

  @override
  int? id;

  int workspaceId;

  String email;

  String role;

  String status;

  String invitationTokenHash;

  int createdByUserId;

  DateTime expiresAt;

  DateTime createdAt;

  DateTime? acceptedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredWorkspaceInvitation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredWorkspaceInvitation copyWith({
    int? id,
    int? workspaceId,
    String? email,
    String? role,
    String? status,
    String? invitationTokenHash,
    int? createdByUserId,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? acceptedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredWorkspaceInvitation',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'email': email,
      'role': role,
      'status': status,
      'invitationTokenHash': invitationTokenHash,
      'createdByUserId': createdByUserId,
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (acceptedAt != null) 'acceptedAt': acceptedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredWorkspaceInvitation',
      if (id != null) 'id': id,
      'workspaceId': workspaceId,
      'email': email,
      'role': role,
      'status': status,
      'invitationTokenHash': invitationTokenHash,
      'createdByUserId': createdByUserId,
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (acceptedAt != null) 'acceptedAt': acceptedAt?.toJson(),
    };
  }

  static StoredWorkspaceInvitationInclude include() {
    return StoredWorkspaceInvitationInclude._();
  }

  static StoredWorkspaceInvitationIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceInvitationTable>? orderByList,
    StoredWorkspaceInvitationInclude? include,
  }) {
    return StoredWorkspaceInvitationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceInvitation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredWorkspaceInvitation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredWorkspaceInvitationImpl extends StoredWorkspaceInvitation {
  _StoredWorkspaceInvitationImpl({
    int? id,
    required int workspaceId,
    required String email,
    required String role,
    required String status,
    required String invitationTokenHash,
    required int createdByUserId,
    required DateTime expiresAt,
    required DateTime createdAt,
    DateTime? acceptedAt,
  }) : super._(
         id: id,
         workspaceId: workspaceId,
         email: email,
         role: role,
         status: status,
         invitationTokenHash: invitationTokenHash,
         createdByUserId: createdByUserId,
         expiresAt: expiresAt,
         createdAt: createdAt,
         acceptedAt: acceptedAt,
       );

  /// Returns a shallow copy of this [StoredWorkspaceInvitation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredWorkspaceInvitation copyWith({
    Object? id = _Undefined,
    int? workspaceId,
    String? email,
    String? role,
    String? status,
    String? invitationTokenHash,
    int? createdByUserId,
    DateTime? expiresAt,
    DateTime? createdAt,
    Object? acceptedAt = _Undefined,
  }) {
    return StoredWorkspaceInvitation(
      id: id is int? ? id : this.id,
      workspaceId: workspaceId ?? this.workspaceId,
      email: email ?? this.email,
      role: role ?? this.role,
      status: status ?? this.status,
      invitationTokenHash: invitationTokenHash ?? this.invitationTokenHash,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
      acceptedAt: acceptedAt is DateTime? ? acceptedAt : this.acceptedAt,
    );
  }
}

class StoredWorkspaceInvitationUpdateTable
    extends _i1.UpdateTable<StoredWorkspaceInvitationTable> {
  StoredWorkspaceInvitationUpdateTable(super.table);

  _i1.ColumnValue<int, int> workspaceId(int value) => _i1.ColumnValue(
    table.workspaceId,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> role(String value) => _i1.ColumnValue(
    table.role,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> invitationTokenHash(String value) =>
      _i1.ColumnValue(
        table.invitationTokenHash,
        value,
      );

  _i1.ColumnValue<int, int> createdByUserId(int value) => _i1.ColumnValue(
    table.createdByUserId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> expiresAt(DateTime value) =>
      _i1.ColumnValue(
        table.expiresAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> acceptedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.acceptedAt,
        value,
      );
}

class StoredWorkspaceInvitationTable extends _i1.Table<int?> {
  StoredWorkspaceInvitationTable({super.tableRelation})
    : super(tableName: 'workspace_invitations') {
    updateTable = StoredWorkspaceInvitationUpdateTable(this);
    workspaceId = _i1.ColumnInt(
      'workspaceId',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    role = _i1.ColumnString(
      'role',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    invitationTokenHash = _i1.ColumnString(
      'invitationTokenHash',
      this,
    );
    createdByUserId = _i1.ColumnInt(
      'createdByUserId',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    acceptedAt = _i1.ColumnDateTime(
      'acceptedAt',
      this,
    );
  }

  late final StoredWorkspaceInvitationUpdateTable updateTable;

  late final _i1.ColumnInt workspaceId;

  late final _i1.ColumnString email;

  late final _i1.ColumnString role;

  late final _i1.ColumnString status;

  late final _i1.ColumnString invitationTokenHash;

  late final _i1.ColumnInt createdByUserId;

  late final _i1.ColumnDateTime expiresAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime acceptedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    workspaceId,
    email,
    role,
    status,
    invitationTokenHash,
    createdByUserId,
    expiresAt,
    createdAt,
    acceptedAt,
  ];
}

class StoredWorkspaceInvitationInclude extends _i1.IncludeObject {
  StoredWorkspaceInvitationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceInvitation.t;
}

class StoredWorkspaceInvitationIncludeList extends _i1.IncludeList {
  StoredWorkspaceInvitationIncludeList._({
    _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredWorkspaceInvitation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredWorkspaceInvitation.t;
}

class StoredWorkspaceInvitationRepository {
  const StoredWorkspaceInvitationRepository._();

  /// Returns a list of [StoredWorkspaceInvitation]s matching the given query parameters.
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
  Future<List<StoredWorkspaceInvitation>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceInvitationTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredWorkspaceInvitation>(
      where: where?.call(StoredWorkspaceInvitation.t),
      orderBy: orderBy?.call(StoredWorkspaceInvitation.t),
      orderByList: orderByList?.call(StoredWorkspaceInvitation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredWorkspaceInvitation] matching the given query parameters.
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
  Future<StoredWorkspaceInvitation?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceInvitationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredWorkspaceInvitationTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredWorkspaceInvitation>(
      where: where?.call(StoredWorkspaceInvitation.t),
      orderBy: orderBy?.call(StoredWorkspaceInvitation.t),
      orderByList: orderByList?.call(StoredWorkspaceInvitation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredWorkspaceInvitation] by its [id] or null if no such row exists.
  Future<StoredWorkspaceInvitation?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredWorkspaceInvitation>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredWorkspaceInvitation]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredWorkspaceInvitation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredWorkspaceInvitation>> insert(
    _i1.DatabaseSession session,
    List<StoredWorkspaceInvitation> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredWorkspaceInvitation>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredWorkspaceInvitation] and returns the inserted row.
  ///
  /// The returned [StoredWorkspaceInvitation] will have its `id` field set.
  Future<StoredWorkspaceInvitation> insertRow(
    _i1.DatabaseSession session,
    StoredWorkspaceInvitation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredWorkspaceInvitation>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceInvitation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredWorkspaceInvitation>> update(
    _i1.DatabaseSession session,
    List<StoredWorkspaceInvitation> rows, {
    _i1.ColumnSelections<StoredWorkspaceInvitationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredWorkspaceInvitation>(
      rows,
      columns: columns?.call(StoredWorkspaceInvitation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceInvitation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredWorkspaceInvitation> updateRow(
    _i1.DatabaseSession session,
    StoredWorkspaceInvitation row, {
    _i1.ColumnSelections<StoredWorkspaceInvitationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredWorkspaceInvitation>(
      row,
      columns: columns?.call(StoredWorkspaceInvitation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredWorkspaceInvitation] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredWorkspaceInvitation?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceInvitationUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredWorkspaceInvitation>(
      id,
      columnValues: columnValues(StoredWorkspaceInvitation.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredWorkspaceInvitation]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredWorkspaceInvitation>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredWorkspaceInvitationUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredWorkspaceInvitationTable>? orderBy,
    _i1.OrderByListBuilder<StoredWorkspaceInvitationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredWorkspaceInvitation>(
      columnValues: columnValues(StoredWorkspaceInvitation.t.updateTable),
      where: where(StoredWorkspaceInvitation.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredWorkspaceInvitation.t),
      orderByList: orderByList?.call(StoredWorkspaceInvitation.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredWorkspaceInvitation]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredWorkspaceInvitation>> delete(
    _i1.DatabaseSession session,
    List<StoredWorkspaceInvitation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredWorkspaceInvitation>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredWorkspaceInvitation].
  Future<StoredWorkspaceInvitation> deleteRow(
    _i1.DatabaseSession session,
    StoredWorkspaceInvitation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredWorkspaceInvitation>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredWorkspaceInvitation>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredWorkspaceInvitation>(
      where: where(StoredWorkspaceInvitation.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredWorkspaceInvitation>(
      where: where?.call(StoredWorkspaceInvitation.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredWorkspaceInvitation] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredWorkspaceInvitationTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredWorkspaceInvitation>(
      where: where(StoredWorkspaceInvitation.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
