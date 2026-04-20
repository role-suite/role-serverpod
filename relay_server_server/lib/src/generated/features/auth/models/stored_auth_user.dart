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

abstract class StoredAuthUser
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoredAuthUser._({
    this.id,
    required this.email,
    required this.name,
    required this.passwordHash,
    required this.passwordSalt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoredAuthUser({
    int? id,
    required String email,
    required String name,
    required String passwordHash,
    required String passwordSalt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _StoredAuthUserImpl;

  factory StoredAuthUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoredAuthUser(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      name: jsonSerialization['name'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String,
      passwordSalt: jsonSerialization['passwordSalt'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = StoredAuthUserTable();

  static const db = StoredAuthUserRepository._();

  @override
  int? id;

  String email;

  String name;

  String passwordHash;

  String passwordSalt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoredAuthUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoredAuthUser copyWith({
    int? id,
    String? email,
    String? name,
    String? passwordHash,
    String? passwordSalt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoredAuthUser',
      if (id != null) 'id': id,
      'email': email,
      'name': name,
      'passwordHash': passwordHash,
      'passwordSalt': passwordSalt,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoredAuthUser',
      if (id != null) 'id': id,
      'email': email,
      'name': name,
      'passwordHash': passwordHash,
      'passwordSalt': passwordSalt,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static StoredAuthUserInclude include() {
    return StoredAuthUserInclude._();
  }

  static StoredAuthUserIncludeList includeList({
    _i1.WhereExpressionBuilder<StoredAuthUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthUserTable>? orderByList,
    StoredAuthUserInclude? include,
  }) {
    return StoredAuthUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredAuthUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoredAuthUser.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoredAuthUserImpl extends StoredAuthUser {
  _StoredAuthUserImpl({
    int? id,
    required String email,
    required String name,
    required String passwordHash,
    required String passwordSalt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         email: email,
         name: name,
         passwordHash: passwordHash,
         passwordSalt: passwordSalt,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [StoredAuthUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoredAuthUser copyWith({
    Object? id = _Undefined,
    String? email,
    String? name,
    String? passwordHash,
    String? passwordSalt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StoredAuthUser(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      passwordHash: passwordHash ?? this.passwordHash,
      passwordSalt: passwordSalt ?? this.passwordSalt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class StoredAuthUserUpdateTable extends _i1.UpdateTable<StoredAuthUserTable> {
  StoredAuthUserUpdateTable(super.table);

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> passwordHash(String value) => _i1.ColumnValue(
    table.passwordHash,
    value,
  );

  _i1.ColumnValue<String, String> passwordSalt(String value) => _i1.ColumnValue(
    table.passwordSalt,
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

class StoredAuthUserTable extends _i1.Table<int?> {
  StoredAuthUserTable({super.tableRelation}) : super(tableName: 'auth_users') {
    updateTable = StoredAuthUserUpdateTable(this);
    email = _i1.ColumnString(
      'email',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    passwordHash = _i1.ColumnString(
      'passwordHash',
      this,
    );
    passwordSalt = _i1.ColumnString(
      'passwordSalt',
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

  late final StoredAuthUserUpdateTable updateTable;

  late final _i1.ColumnString email;

  late final _i1.ColumnString name;

  late final _i1.ColumnString passwordHash;

  late final _i1.ColumnString passwordSalt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    email,
    name,
    passwordHash,
    passwordSalt,
    createdAt,
    updatedAt,
  ];
}

class StoredAuthUserInclude extends _i1.IncludeObject {
  StoredAuthUserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoredAuthUser.t;
}

class StoredAuthUserIncludeList extends _i1.IncludeList {
  StoredAuthUserIncludeList._({
    _i1.WhereExpressionBuilder<StoredAuthUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoredAuthUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoredAuthUser.t;
}

class StoredAuthUserRepository {
  const StoredAuthUserRepository._();

  /// Returns a list of [StoredAuthUser]s matching the given query parameters.
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
  Future<List<StoredAuthUser>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthUserTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<StoredAuthUser>(
      where: where?.call(StoredAuthUser.t),
      orderBy: orderBy?.call(StoredAuthUser.t),
      orderByList: orderByList?.call(StoredAuthUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [StoredAuthUser] matching the given query parameters.
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
  Future<StoredAuthUser?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoredAuthUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoredAuthUserTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<StoredAuthUser>(
      where: where?.call(StoredAuthUser.t),
      orderBy: orderBy?.call(StoredAuthUser.t),
      orderByList: orderByList?.call(StoredAuthUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [StoredAuthUser] by its [id] or null if no such row exists.
  Future<StoredAuthUser?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<StoredAuthUser>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [StoredAuthUser]s in the list and returns the inserted rows.
  ///
  /// The returned [StoredAuthUser]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<StoredAuthUser>> insert(
    _i1.DatabaseSession session,
    List<StoredAuthUser> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<StoredAuthUser>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [StoredAuthUser] and returns the inserted row.
  ///
  /// The returned [StoredAuthUser] will have its `id` field set.
  Future<StoredAuthUser> insertRow(
    _i1.DatabaseSession session,
    StoredAuthUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoredAuthUser>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoredAuthUser]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoredAuthUser>> update(
    _i1.DatabaseSession session,
    List<StoredAuthUser> rows, {
    _i1.ColumnSelections<StoredAuthUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoredAuthUser>(
      rows,
      columns: columns?.call(StoredAuthUser.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredAuthUser]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoredAuthUser> updateRow(
    _i1.DatabaseSession session,
    StoredAuthUser row, {
    _i1.ColumnSelections<StoredAuthUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoredAuthUser>(
      row,
      columns: columns?.call(StoredAuthUser.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoredAuthUser] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoredAuthUser?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<StoredAuthUserUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoredAuthUser>(
      id,
      columnValues: columnValues(StoredAuthUser.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoredAuthUser]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoredAuthUser>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<StoredAuthUserUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<StoredAuthUserTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoredAuthUserTable>? orderBy,
    _i1.OrderByListBuilder<StoredAuthUserTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoredAuthUser>(
      columnValues: columnValues(StoredAuthUser.t.updateTable),
      where: where(StoredAuthUser.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoredAuthUser.t),
      orderByList: orderByList?.call(StoredAuthUser.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoredAuthUser]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoredAuthUser>> delete(
    _i1.DatabaseSession session,
    List<StoredAuthUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoredAuthUser>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoredAuthUser].
  Future<StoredAuthUser> deleteRow(
    _i1.DatabaseSession session,
    StoredAuthUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoredAuthUser>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoredAuthUser>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredAuthUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoredAuthUser>(
      where: where(StoredAuthUser.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<StoredAuthUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoredAuthUser>(
      where: where?.call(StoredAuthUser.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [StoredAuthUser] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<StoredAuthUserTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<StoredAuthUser>(
      where: where(StoredAuthUser.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
