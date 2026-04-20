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
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i3;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i4;
import 'features/auth/models/auth_login_request.dart' as _i5;
import 'features/auth/models/auth_refresh_request.dart' as _i6;
import 'features/auth/models/auth_register_request.dart' as _i7;
import 'features/auth/models/auth_token_pair.dart' as _i8;
import 'features/auth/models/auth_user_model.dart' as _i9;
import 'features/auth/models/stored_auth_session.dart' as _i10;
import 'features/auth/models/stored_auth_user.dart' as _i11;
import 'features/collections/models/collection_endpoint_example_model.dart'
    as _i12;
import 'features/collections/models/collection_endpoint_model.dart' as _i13;
import 'features/collections/models/collection_folder_model.dart' as _i14;
import 'features/collections/models/collection_model.dart' as _i15;
import 'features/collections/models/create_collection_endpoint_example_request.dart'
    as _i16;
import 'features/collections/models/create_collection_endpoint_request.dart'
    as _i17;
import 'features/collections/models/create_collection_folder_request.dart'
    as _i18;
import 'features/collections/models/create_collection_request.dart' as _i19;
import 'features/collections/models/stored_collection.dart' as _i20;
import 'features/collections/models/stored_collection_endpoint.dart' as _i21;
import 'features/collections/models/stored_collection_endpoint_example.dart'
    as _i22;
import 'features/collections/models/stored_collection_folder.dart' as _i23;
import 'features/collections/models/update_collection_endpoint_example_request.dart'
    as _i24;
import 'features/collections/models/update_collection_endpoint_request.dart'
    as _i25;
import 'features/collections/models/update_collection_folder_request.dart'
    as _i26;
import 'features/collections/models/update_collection_request.dart' as _i27;
import 'features/environments/models/create_environment_request.dart' as _i28;
import 'features/environments/models/create_environment_variable_request.dart'
    as _i29;
import 'features/environments/models/environment_model.dart' as _i30;
import 'features/environments/models/environment_variable_model.dart' as _i31;
import 'features/environments/models/stored_environment.dart' as _i32;
import 'features/environments/models/stored_environment_variable.dart' as _i33;
import 'features/environments/models/update_environment_request.dart' as _i34;
import 'features/environments/models/update_environment_variable_request.dart'
    as _i35;
import 'features/import_export/models/create_workspace_export_request.dart'
    as _i36;
import 'features/import_export/models/create_workspace_import_request.dart'
    as _i37;
import 'features/import_export/models/import_export_job_model.dart' as _i38;
import 'features/import_export/models/stored_import_export_job.dart' as _i39;
import 'features/runs/models/create_request_run_request.dart' as _i40;
import 'features/runs/models/request_run_detail_model.dart' as _i41;
import 'features/runs/models/request_run_model.dart' as _i42;
import 'features/runs/models/request_run_request_snapshot_model.dart' as _i43;
import 'features/runs/models/request_run_response_snapshot_model.dart' as _i44;
import 'features/runs/models/run_error_model.dart' as _i45;
import 'features/runs/models/stored_request_run.dart' as _i46;
import 'features/runs/models/stored_request_run_request_snapshot.dart' as _i47;
import 'features/runs/models/stored_request_run_response_snapshot.dart' as _i48;
import 'features/workspaces/models/accept_workspace_invitation_request.dart'
    as _i49;
import 'features/workspaces/models/convert_workspace_to_team_request.dart'
    as _i50;
import 'features/workspaces/models/create_workspace_invitation_request.dart'
    as _i51;
import 'features/workspaces/models/create_workspace_request.dart' as _i52;
import 'features/workspaces/models/stored_workspace.dart' as _i53;
import 'features/workspaces/models/stored_workspace_event.dart' as _i54;
import 'features/workspaces/models/stored_workspace_invitation.dart' as _i55;
import 'features/workspaces/models/stored_workspace_membership.dart' as _i56;
import 'features/workspaces/models/update_workspace_member_role_request.dart'
    as _i57;
import 'features/workspaces/models/workspace_event_model.dart' as _i58;
import 'features/workspaces/models/workspace_invitation_issue_model.dart'
    as _i59;
import 'features/workspaces/models/workspace_invitation_model.dart' as _i60;
import 'features/workspaces/models/workspace_member_model.dart' as _i61;
import 'features/workspaces/models/workspace_model.dart' as _i62;
import 'features/workspaces/models/workspace_updates_query.dart' as _i63;
import 'package:relay_server_server/src/generated/features/collections/models/collection_model.dart'
    as _i64;
import 'package:relay_server_server/src/generated/features/collections/models/collection_folder_model.dart'
    as _i65;
import 'package:relay_server_server/src/generated/features/collections/models/collection_endpoint_model.dart'
    as _i66;
import 'package:relay_server_server/src/generated/features/collections/models/collection_endpoint_example_model.dart'
    as _i67;
import 'package:relay_server_server/src/generated/features/environments/models/environment_model.dart'
    as _i68;
import 'package:relay_server_server/src/generated/features/environments/models/environment_variable_model.dart'
    as _i69;
import 'package:relay_server_server/src/generated/features/import_export/models/import_export_job_model.dart'
    as _i70;
import 'package:relay_server_server/src/generated/features/runs/models/request_run_model.dart'
    as _i71;
import 'package:relay_server_server/src/generated/features/workspaces/models/workspace_model.dart'
    as _i72;
import 'package:relay_server_server/src/generated/features/workspaces/models/workspace_member_model.dart'
    as _i73;
import 'package:relay_server_server/src/generated/features/workspaces/models/workspace_event_model.dart'
    as _i74;
export 'features/auth/models/auth_login_request.dart';
export 'features/auth/models/auth_refresh_request.dart';
export 'features/auth/models/auth_register_request.dart';
export 'features/auth/models/auth_token_pair.dart';
export 'features/auth/models/auth_user_model.dart';
export 'features/auth/models/stored_auth_session.dart';
export 'features/auth/models/stored_auth_user.dart';
export 'features/collections/models/collection_endpoint_example_model.dart';
export 'features/collections/models/collection_endpoint_model.dart';
export 'features/collections/models/collection_folder_model.dart';
export 'features/collections/models/collection_model.dart';
export 'features/collections/models/create_collection_endpoint_example_request.dart';
export 'features/collections/models/create_collection_endpoint_request.dart';
export 'features/collections/models/create_collection_folder_request.dart';
export 'features/collections/models/create_collection_request.dart';
export 'features/collections/models/stored_collection.dart';
export 'features/collections/models/stored_collection_endpoint.dart';
export 'features/collections/models/stored_collection_endpoint_example.dart';
export 'features/collections/models/stored_collection_folder.dart';
export 'features/collections/models/update_collection_endpoint_example_request.dart';
export 'features/collections/models/update_collection_endpoint_request.dart';
export 'features/collections/models/update_collection_folder_request.dart';
export 'features/collections/models/update_collection_request.dart';
export 'features/environments/models/create_environment_request.dart';
export 'features/environments/models/create_environment_variable_request.dart';
export 'features/environments/models/environment_model.dart';
export 'features/environments/models/environment_variable_model.dart';
export 'features/environments/models/stored_environment.dart';
export 'features/environments/models/stored_environment_variable.dart';
export 'features/environments/models/update_environment_request.dart';
export 'features/environments/models/update_environment_variable_request.dart';
export 'features/import_export/models/create_workspace_export_request.dart';
export 'features/import_export/models/create_workspace_import_request.dart';
export 'features/import_export/models/import_export_job_model.dart';
export 'features/import_export/models/stored_import_export_job.dart';
export 'features/runs/models/create_request_run_request.dart';
export 'features/runs/models/request_run_detail_model.dart';
export 'features/runs/models/request_run_model.dart';
export 'features/runs/models/request_run_request_snapshot_model.dart';
export 'features/runs/models/request_run_response_snapshot_model.dart';
export 'features/runs/models/run_error_model.dart';
export 'features/runs/models/stored_request_run.dart';
export 'features/runs/models/stored_request_run_request_snapshot.dart';
export 'features/runs/models/stored_request_run_response_snapshot.dart';
export 'features/workspaces/models/accept_workspace_invitation_request.dart';
export 'features/workspaces/models/convert_workspace_to_team_request.dart';
export 'features/workspaces/models/create_workspace_invitation_request.dart';
export 'features/workspaces/models/create_workspace_request.dart';
export 'features/workspaces/models/stored_workspace.dart';
export 'features/workspaces/models/stored_workspace_event.dart';
export 'features/workspaces/models/stored_workspace_invitation.dart';
export 'features/workspaces/models/stored_workspace_membership.dart';
export 'features/workspaces/models/update_workspace_member_role_request.dart';
export 'features/workspaces/models/workspace_event_model.dart';
export 'features/workspaces/models/workspace_invitation_issue_model.dart';
export 'features/workspaces/models/workspace_invitation_model.dart';
export 'features/workspaces/models/workspace_member_model.dart';
export 'features/workspaces/models/workspace_model.dart';
export 'features/workspaces/models/workspace_updates_query.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'auth_sessions',
      dartName: 'StoredAuthSession',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'auth_sessions_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'refreshTokenHash',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'expiresAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'revokedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'auth_sessions_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'auth_users',
      dartName: 'StoredAuthUser',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'auth_users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'passwordHash',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'passwordSalt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'auth_users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'collection_endpoint_examples',
      dartName: 'StoredCollectionEndpointExample',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'collection_endpoint_examples_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'endpointId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'statusCode',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'headersJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'body',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'collection_endpoint_examples_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'collection_endpoints',
      dartName: 'StoredCollectionEndpoint',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'collection_endpoints_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'collectionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'folderId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'method',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'url',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'headersJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'queryParamsJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'bodyJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'authJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'collection_endpoints_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'collection_folders',
      dartName: 'StoredCollectionFolder',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'collection_folders_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'collectionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'parentFolderId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'collection_folders_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'collections',
      dartName: 'StoredCollection',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'collections_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'collections_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'environment_variables',
      dartName: 'StoredEnvironmentVariable',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'environment_variables_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'environmentId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'key',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'value',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'enabled',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'isSecret',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'environment_variables_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'environments',
      dartName: 'StoredEnvironment',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'environments_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'environments_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'import_export_jobs',
      dartName: 'StoredImportExportJob',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'import_export_jobs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'format',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'summaryJson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'completedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'import_export_jobs_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'request_run_requests',
      dartName: 'StoredRequestRunRequestSnapshot',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'request_run_requests_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'runId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'method',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'url',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'headersJson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'queryParamsJson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bodyJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'authJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'resolvedVariablesJson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'timeoutMs',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'request_run_requests_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'request_run_responses',
      dartName: 'StoredRequestRunResponseSnapshot',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'request_run_responses_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'runId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'statusCode',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'headersJson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bodyText',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'bodyBase64',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'sizeBytes',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'truncated',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'request_run_responses_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'request_runs',
      dartName: 'StoredRequestRun',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'request_runs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'initiatedByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'sourceType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'sourceCollectionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'sourceEndpointId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'startedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'completedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'durationMs',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'errorCode',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'errorMessage',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'errorJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'request_runs_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'workspace_events',
      dartName: 'StoredWorkspaceEvent',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'workspace_events_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'actorUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'entity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'action',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'entityId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'payloadJson',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'workspace_events_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'workspace_invitations',
      dartName: 'StoredWorkspaceInvitation',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'workspace_invitations_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'role',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'invitationTokenHash',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'expiresAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'acceptedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'workspace_invitations_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'workspace_memberships',
      dartName: 'StoredWorkspaceMembership',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'workspace_memberships_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'workspaceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'role',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'workspace_memberships_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'workspaces',
      dartName: 'StoredWorkspace',
      schema: 'public',
      module: 'relay_server',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'workspaces_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'slug',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdByUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'workspaces_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i4.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i5.AuthLoginRequest) {
      return _i5.AuthLoginRequest.fromJson(data) as T;
    }
    if (t == _i6.AuthRefreshRequest) {
      return _i6.AuthRefreshRequest.fromJson(data) as T;
    }
    if (t == _i7.AuthRegisterRequest) {
      return _i7.AuthRegisterRequest.fromJson(data) as T;
    }
    if (t == _i8.AuthTokenPair) {
      return _i8.AuthTokenPair.fromJson(data) as T;
    }
    if (t == _i9.AuthUserModel) {
      return _i9.AuthUserModel.fromJson(data) as T;
    }
    if (t == _i10.StoredAuthSession) {
      return _i10.StoredAuthSession.fromJson(data) as T;
    }
    if (t == _i11.StoredAuthUser) {
      return _i11.StoredAuthUser.fromJson(data) as T;
    }
    if (t == _i12.CollectionEndpointExampleModel) {
      return _i12.CollectionEndpointExampleModel.fromJson(data) as T;
    }
    if (t == _i13.CollectionEndpointModel) {
      return _i13.CollectionEndpointModel.fromJson(data) as T;
    }
    if (t == _i14.CollectionFolderModel) {
      return _i14.CollectionFolderModel.fromJson(data) as T;
    }
    if (t == _i15.CollectionModel) {
      return _i15.CollectionModel.fromJson(data) as T;
    }
    if (t == _i16.CreateCollectionEndpointExampleRequest) {
      return _i16.CreateCollectionEndpointExampleRequest.fromJson(data) as T;
    }
    if (t == _i17.CreateCollectionEndpointRequest) {
      return _i17.CreateCollectionEndpointRequest.fromJson(data) as T;
    }
    if (t == _i18.CreateCollectionFolderRequest) {
      return _i18.CreateCollectionFolderRequest.fromJson(data) as T;
    }
    if (t == _i19.CreateCollectionRequest) {
      return _i19.CreateCollectionRequest.fromJson(data) as T;
    }
    if (t == _i20.StoredCollection) {
      return _i20.StoredCollection.fromJson(data) as T;
    }
    if (t == _i21.StoredCollectionEndpoint) {
      return _i21.StoredCollectionEndpoint.fromJson(data) as T;
    }
    if (t == _i22.StoredCollectionEndpointExample) {
      return _i22.StoredCollectionEndpointExample.fromJson(data) as T;
    }
    if (t == _i23.StoredCollectionFolder) {
      return _i23.StoredCollectionFolder.fromJson(data) as T;
    }
    if (t == _i24.UpdateCollectionEndpointExampleRequest) {
      return _i24.UpdateCollectionEndpointExampleRequest.fromJson(data) as T;
    }
    if (t == _i25.UpdateCollectionEndpointRequest) {
      return _i25.UpdateCollectionEndpointRequest.fromJson(data) as T;
    }
    if (t == _i26.UpdateCollectionFolderRequest) {
      return _i26.UpdateCollectionFolderRequest.fromJson(data) as T;
    }
    if (t == _i27.UpdateCollectionRequest) {
      return _i27.UpdateCollectionRequest.fromJson(data) as T;
    }
    if (t == _i28.CreateEnvironmentRequest) {
      return _i28.CreateEnvironmentRequest.fromJson(data) as T;
    }
    if (t == _i29.CreateEnvironmentVariableRequest) {
      return _i29.CreateEnvironmentVariableRequest.fromJson(data) as T;
    }
    if (t == _i30.EnvironmentModel) {
      return _i30.EnvironmentModel.fromJson(data) as T;
    }
    if (t == _i31.EnvironmentVariableModel) {
      return _i31.EnvironmentVariableModel.fromJson(data) as T;
    }
    if (t == _i32.StoredEnvironment) {
      return _i32.StoredEnvironment.fromJson(data) as T;
    }
    if (t == _i33.StoredEnvironmentVariable) {
      return _i33.StoredEnvironmentVariable.fromJson(data) as T;
    }
    if (t == _i34.UpdateEnvironmentRequest) {
      return _i34.UpdateEnvironmentRequest.fromJson(data) as T;
    }
    if (t == _i35.UpdateEnvironmentVariableRequest) {
      return _i35.UpdateEnvironmentVariableRequest.fromJson(data) as T;
    }
    if (t == _i36.CreateWorkspaceExportRequest) {
      return _i36.CreateWorkspaceExportRequest.fromJson(data) as T;
    }
    if (t == _i37.CreateWorkspaceImportRequest) {
      return _i37.CreateWorkspaceImportRequest.fromJson(data) as T;
    }
    if (t == _i38.ImportExportJobModel) {
      return _i38.ImportExportJobModel.fromJson(data) as T;
    }
    if (t == _i39.StoredImportExportJob) {
      return _i39.StoredImportExportJob.fromJson(data) as T;
    }
    if (t == _i40.CreateRequestRunRequest) {
      return _i40.CreateRequestRunRequest.fromJson(data) as T;
    }
    if (t == _i41.RequestRunDetailModel) {
      return _i41.RequestRunDetailModel.fromJson(data) as T;
    }
    if (t == _i42.RequestRunModel) {
      return _i42.RequestRunModel.fromJson(data) as T;
    }
    if (t == _i43.RequestRunRequestSnapshotModel) {
      return _i43.RequestRunRequestSnapshotModel.fromJson(data) as T;
    }
    if (t == _i44.RequestRunResponseSnapshotModel) {
      return _i44.RequestRunResponseSnapshotModel.fromJson(data) as T;
    }
    if (t == _i45.RunErrorModel) {
      return _i45.RunErrorModel.fromJson(data) as T;
    }
    if (t == _i46.StoredRequestRun) {
      return _i46.StoredRequestRun.fromJson(data) as T;
    }
    if (t == _i47.StoredRequestRunRequestSnapshot) {
      return _i47.StoredRequestRunRequestSnapshot.fromJson(data) as T;
    }
    if (t == _i48.StoredRequestRunResponseSnapshot) {
      return _i48.StoredRequestRunResponseSnapshot.fromJson(data) as T;
    }
    if (t == _i49.AcceptWorkspaceInvitationRequest) {
      return _i49.AcceptWorkspaceInvitationRequest.fromJson(data) as T;
    }
    if (t == _i50.ConvertWorkspaceToTeamRequest) {
      return _i50.ConvertWorkspaceToTeamRequest.fromJson(data) as T;
    }
    if (t == _i51.CreateWorkspaceInvitationRequest) {
      return _i51.CreateWorkspaceInvitationRequest.fromJson(data) as T;
    }
    if (t == _i52.CreateWorkspaceRequest) {
      return _i52.CreateWorkspaceRequest.fromJson(data) as T;
    }
    if (t == _i53.StoredWorkspace) {
      return _i53.StoredWorkspace.fromJson(data) as T;
    }
    if (t == _i54.StoredWorkspaceEvent) {
      return _i54.StoredWorkspaceEvent.fromJson(data) as T;
    }
    if (t == _i55.StoredWorkspaceInvitation) {
      return _i55.StoredWorkspaceInvitation.fromJson(data) as T;
    }
    if (t == _i56.StoredWorkspaceMembership) {
      return _i56.StoredWorkspaceMembership.fromJson(data) as T;
    }
    if (t == _i57.UpdateWorkspaceMemberRoleRequest) {
      return _i57.UpdateWorkspaceMemberRoleRequest.fromJson(data) as T;
    }
    if (t == _i58.WorkspaceEventModel) {
      return _i58.WorkspaceEventModel.fromJson(data) as T;
    }
    if (t == _i59.WorkspaceInvitationIssueModel) {
      return _i59.WorkspaceInvitationIssueModel.fromJson(data) as T;
    }
    if (t == _i60.WorkspaceInvitationModel) {
      return _i60.WorkspaceInvitationModel.fromJson(data) as T;
    }
    if (t == _i61.WorkspaceMemberModel) {
      return _i61.WorkspaceMemberModel.fromJson(data) as T;
    }
    if (t == _i62.WorkspaceModel) {
      return _i62.WorkspaceModel.fromJson(data) as T;
    }
    if (t == _i63.WorkspaceUpdatesQuery) {
      return _i63.WorkspaceUpdatesQuery.fromJson(data) as T;
    }
    if (t == _i1.getType<_i5.AuthLoginRequest?>()) {
      return (data != null ? _i5.AuthLoginRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.AuthRefreshRequest?>()) {
      return (data != null ? _i6.AuthRefreshRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.AuthRegisterRequest?>()) {
      return (data != null ? _i7.AuthRegisterRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.AuthTokenPair?>()) {
      return (data != null ? _i8.AuthTokenPair.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.AuthUserModel?>()) {
      return (data != null ? _i9.AuthUserModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.StoredAuthSession?>()) {
      return (data != null ? _i10.StoredAuthSession.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.StoredAuthUser?>()) {
      return (data != null ? _i11.StoredAuthUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.CollectionEndpointExampleModel?>()) {
      return (data != null
              ? _i12.CollectionEndpointExampleModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i13.CollectionEndpointModel?>()) {
      return (data != null ? _i13.CollectionEndpointModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.CollectionFolderModel?>()) {
      return (data != null ? _i14.CollectionFolderModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i15.CollectionModel?>()) {
      return (data != null ? _i15.CollectionModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.CreateCollectionEndpointExampleRequest?>()) {
      return (data != null
              ? _i16.CreateCollectionEndpointExampleRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i17.CreateCollectionEndpointRequest?>()) {
      return (data != null
              ? _i17.CreateCollectionEndpointRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i18.CreateCollectionFolderRequest?>()) {
      return (data != null
              ? _i18.CreateCollectionFolderRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i19.CreateCollectionRequest?>()) {
      return (data != null ? _i19.CreateCollectionRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i20.StoredCollection?>()) {
      return (data != null ? _i20.StoredCollection.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.StoredCollectionEndpoint?>()) {
      return (data != null
              ? _i21.StoredCollectionEndpoint.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i22.StoredCollectionEndpointExample?>()) {
      return (data != null
              ? _i22.StoredCollectionEndpointExample.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i23.StoredCollectionFolder?>()) {
      return (data != null ? _i23.StoredCollectionFolder.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i24.UpdateCollectionEndpointExampleRequest?>()) {
      return (data != null
              ? _i24.UpdateCollectionEndpointExampleRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i25.UpdateCollectionEndpointRequest?>()) {
      return (data != null
              ? _i25.UpdateCollectionEndpointRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i26.UpdateCollectionFolderRequest?>()) {
      return (data != null
              ? _i26.UpdateCollectionFolderRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i27.UpdateCollectionRequest?>()) {
      return (data != null ? _i27.UpdateCollectionRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i28.CreateEnvironmentRequest?>()) {
      return (data != null
              ? _i28.CreateEnvironmentRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i29.CreateEnvironmentVariableRequest?>()) {
      return (data != null
              ? _i29.CreateEnvironmentVariableRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i30.EnvironmentModel?>()) {
      return (data != null ? _i30.EnvironmentModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.EnvironmentVariableModel?>()) {
      return (data != null
              ? _i31.EnvironmentVariableModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i32.StoredEnvironment?>()) {
      return (data != null ? _i32.StoredEnvironment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.StoredEnvironmentVariable?>()) {
      return (data != null
              ? _i33.StoredEnvironmentVariable.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i34.UpdateEnvironmentRequest?>()) {
      return (data != null
              ? _i34.UpdateEnvironmentRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i35.UpdateEnvironmentVariableRequest?>()) {
      return (data != null
              ? _i35.UpdateEnvironmentVariableRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i36.CreateWorkspaceExportRequest?>()) {
      return (data != null
              ? _i36.CreateWorkspaceExportRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i37.CreateWorkspaceImportRequest?>()) {
      return (data != null
              ? _i37.CreateWorkspaceImportRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i38.ImportExportJobModel?>()) {
      return (data != null ? _i38.ImportExportJobModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i39.StoredImportExportJob?>()) {
      return (data != null ? _i39.StoredImportExportJob.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i40.CreateRequestRunRequest?>()) {
      return (data != null ? _i40.CreateRequestRunRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i41.RequestRunDetailModel?>()) {
      return (data != null ? _i41.RequestRunDetailModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i42.RequestRunModel?>()) {
      return (data != null ? _i42.RequestRunModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i43.RequestRunRequestSnapshotModel?>()) {
      return (data != null
              ? _i43.RequestRunRequestSnapshotModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i44.RequestRunResponseSnapshotModel?>()) {
      return (data != null
              ? _i44.RequestRunResponseSnapshotModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i45.RunErrorModel?>()) {
      return (data != null ? _i45.RunErrorModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i46.StoredRequestRun?>()) {
      return (data != null ? _i46.StoredRequestRun.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i47.StoredRequestRunRequestSnapshot?>()) {
      return (data != null
              ? _i47.StoredRequestRunRequestSnapshot.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i48.StoredRequestRunResponseSnapshot?>()) {
      return (data != null
              ? _i48.StoredRequestRunResponseSnapshot.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i49.AcceptWorkspaceInvitationRequest?>()) {
      return (data != null
              ? _i49.AcceptWorkspaceInvitationRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i50.ConvertWorkspaceToTeamRequest?>()) {
      return (data != null
              ? _i50.ConvertWorkspaceToTeamRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i51.CreateWorkspaceInvitationRequest?>()) {
      return (data != null
              ? _i51.CreateWorkspaceInvitationRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i52.CreateWorkspaceRequest?>()) {
      return (data != null ? _i52.CreateWorkspaceRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i53.StoredWorkspace?>()) {
      return (data != null ? _i53.StoredWorkspace.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i54.StoredWorkspaceEvent?>()) {
      return (data != null ? _i54.StoredWorkspaceEvent.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i55.StoredWorkspaceInvitation?>()) {
      return (data != null
              ? _i55.StoredWorkspaceInvitation.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i56.StoredWorkspaceMembership?>()) {
      return (data != null
              ? _i56.StoredWorkspaceMembership.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i57.UpdateWorkspaceMemberRoleRequest?>()) {
      return (data != null
              ? _i57.UpdateWorkspaceMemberRoleRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i58.WorkspaceEventModel?>()) {
      return (data != null ? _i58.WorkspaceEventModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i59.WorkspaceInvitationIssueModel?>()) {
      return (data != null
              ? _i59.WorkspaceInvitationIssueModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i60.WorkspaceInvitationModel?>()) {
      return (data != null
              ? _i60.WorkspaceInvitationModel.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i61.WorkspaceMemberModel?>()) {
      return (data != null ? _i61.WorkspaceMemberModel.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i62.WorkspaceModel?>()) {
      return (data != null ? _i62.WorkspaceModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i63.WorkspaceUpdatesQuery?>()) {
      return (data != null ? _i63.WorkspaceUpdatesQuery.fromJson(data) : null)
          as T;
    }
    if (t == List<_i64.CollectionModel>) {
      return (data as List)
              .map((e) => deserialize<_i64.CollectionModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i65.CollectionFolderModel>) {
      return (data as List)
              .map((e) => deserialize<_i65.CollectionFolderModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i66.CollectionEndpointModel>) {
      return (data as List)
              .map((e) => deserialize<_i66.CollectionEndpointModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i67.CollectionEndpointExampleModel>) {
      return (data as List)
              .map((e) => deserialize<_i67.CollectionEndpointExampleModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i68.EnvironmentModel>) {
      return (data as List)
              .map((e) => deserialize<_i68.EnvironmentModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i69.EnvironmentVariableModel>) {
      return (data as List)
              .map((e) => deserialize<_i69.EnvironmentVariableModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i70.ImportExportJobModel>) {
      return (data as List)
              .map((e) => deserialize<_i70.ImportExportJobModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i71.RequestRunModel>) {
      return (data as List)
              .map((e) => deserialize<_i71.RequestRunModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i72.WorkspaceModel>) {
      return (data as List)
              .map((e) => deserialize<_i72.WorkspaceModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i73.WorkspaceMemberModel>) {
      return (data as List)
              .map((e) => deserialize<_i73.WorkspaceMemberModel>(e))
              .toList()
          as T;
    }
    if (t == List<_i74.WorkspaceEventModel>) {
      return (data as List)
              .map((e) => deserialize<_i74.WorkspaceEventModel>(e))
              .toList()
          as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i4.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i5.AuthLoginRequest => 'AuthLoginRequest',
      _i6.AuthRefreshRequest => 'AuthRefreshRequest',
      _i7.AuthRegisterRequest => 'AuthRegisterRequest',
      _i8.AuthTokenPair => 'AuthTokenPair',
      _i9.AuthUserModel => 'AuthUserModel',
      _i10.StoredAuthSession => 'StoredAuthSession',
      _i11.StoredAuthUser => 'StoredAuthUser',
      _i12.CollectionEndpointExampleModel => 'CollectionEndpointExampleModel',
      _i13.CollectionEndpointModel => 'CollectionEndpointModel',
      _i14.CollectionFolderModel => 'CollectionFolderModel',
      _i15.CollectionModel => 'CollectionModel',
      _i16.CreateCollectionEndpointExampleRequest =>
        'CreateCollectionEndpointExampleRequest',
      _i17.CreateCollectionEndpointRequest => 'CreateCollectionEndpointRequest',
      _i18.CreateCollectionFolderRequest => 'CreateCollectionFolderRequest',
      _i19.CreateCollectionRequest => 'CreateCollectionRequest',
      _i20.StoredCollection => 'StoredCollection',
      _i21.StoredCollectionEndpoint => 'StoredCollectionEndpoint',
      _i22.StoredCollectionEndpointExample => 'StoredCollectionEndpointExample',
      _i23.StoredCollectionFolder => 'StoredCollectionFolder',
      _i24.UpdateCollectionEndpointExampleRequest =>
        'UpdateCollectionEndpointExampleRequest',
      _i25.UpdateCollectionEndpointRequest => 'UpdateCollectionEndpointRequest',
      _i26.UpdateCollectionFolderRequest => 'UpdateCollectionFolderRequest',
      _i27.UpdateCollectionRequest => 'UpdateCollectionRequest',
      _i28.CreateEnvironmentRequest => 'CreateEnvironmentRequest',
      _i29.CreateEnvironmentVariableRequest =>
        'CreateEnvironmentVariableRequest',
      _i30.EnvironmentModel => 'EnvironmentModel',
      _i31.EnvironmentVariableModel => 'EnvironmentVariableModel',
      _i32.StoredEnvironment => 'StoredEnvironment',
      _i33.StoredEnvironmentVariable => 'StoredEnvironmentVariable',
      _i34.UpdateEnvironmentRequest => 'UpdateEnvironmentRequest',
      _i35.UpdateEnvironmentVariableRequest =>
        'UpdateEnvironmentVariableRequest',
      _i36.CreateWorkspaceExportRequest => 'CreateWorkspaceExportRequest',
      _i37.CreateWorkspaceImportRequest => 'CreateWorkspaceImportRequest',
      _i38.ImportExportJobModel => 'ImportExportJobModel',
      _i39.StoredImportExportJob => 'StoredImportExportJob',
      _i40.CreateRequestRunRequest => 'CreateRequestRunRequest',
      _i41.RequestRunDetailModel => 'RequestRunDetailModel',
      _i42.RequestRunModel => 'RequestRunModel',
      _i43.RequestRunRequestSnapshotModel => 'RequestRunRequestSnapshotModel',
      _i44.RequestRunResponseSnapshotModel => 'RequestRunResponseSnapshotModel',
      _i45.RunErrorModel => 'RunErrorModel',
      _i46.StoredRequestRun => 'StoredRequestRun',
      _i47.StoredRequestRunRequestSnapshot => 'StoredRequestRunRequestSnapshot',
      _i48.StoredRequestRunResponseSnapshot =>
        'StoredRequestRunResponseSnapshot',
      _i49.AcceptWorkspaceInvitationRequest =>
        'AcceptWorkspaceInvitationRequest',
      _i50.ConvertWorkspaceToTeamRequest => 'ConvertWorkspaceToTeamRequest',
      _i51.CreateWorkspaceInvitationRequest =>
        'CreateWorkspaceInvitationRequest',
      _i52.CreateWorkspaceRequest => 'CreateWorkspaceRequest',
      _i53.StoredWorkspace => 'StoredWorkspace',
      _i54.StoredWorkspaceEvent => 'StoredWorkspaceEvent',
      _i55.StoredWorkspaceInvitation => 'StoredWorkspaceInvitation',
      _i56.StoredWorkspaceMembership => 'StoredWorkspaceMembership',
      _i57.UpdateWorkspaceMemberRoleRequest =>
        'UpdateWorkspaceMemberRoleRequest',
      _i58.WorkspaceEventModel => 'WorkspaceEventModel',
      _i59.WorkspaceInvitationIssueModel => 'WorkspaceInvitationIssueModel',
      _i60.WorkspaceInvitationModel => 'WorkspaceInvitationModel',
      _i61.WorkspaceMemberModel => 'WorkspaceMemberModel',
      _i62.WorkspaceModel => 'WorkspaceModel',
      _i63.WorkspaceUpdatesQuery => 'WorkspaceUpdatesQuery',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'relay_server.',
        '',
      );
    }

    switch (data) {
      case _i5.AuthLoginRequest():
        return 'AuthLoginRequest';
      case _i6.AuthRefreshRequest():
        return 'AuthRefreshRequest';
      case _i7.AuthRegisterRequest():
        return 'AuthRegisterRequest';
      case _i8.AuthTokenPair():
        return 'AuthTokenPair';
      case _i9.AuthUserModel():
        return 'AuthUserModel';
      case _i10.StoredAuthSession():
        return 'StoredAuthSession';
      case _i11.StoredAuthUser():
        return 'StoredAuthUser';
      case _i12.CollectionEndpointExampleModel():
        return 'CollectionEndpointExampleModel';
      case _i13.CollectionEndpointModel():
        return 'CollectionEndpointModel';
      case _i14.CollectionFolderModel():
        return 'CollectionFolderModel';
      case _i15.CollectionModel():
        return 'CollectionModel';
      case _i16.CreateCollectionEndpointExampleRequest():
        return 'CreateCollectionEndpointExampleRequest';
      case _i17.CreateCollectionEndpointRequest():
        return 'CreateCollectionEndpointRequest';
      case _i18.CreateCollectionFolderRequest():
        return 'CreateCollectionFolderRequest';
      case _i19.CreateCollectionRequest():
        return 'CreateCollectionRequest';
      case _i20.StoredCollection():
        return 'StoredCollection';
      case _i21.StoredCollectionEndpoint():
        return 'StoredCollectionEndpoint';
      case _i22.StoredCollectionEndpointExample():
        return 'StoredCollectionEndpointExample';
      case _i23.StoredCollectionFolder():
        return 'StoredCollectionFolder';
      case _i24.UpdateCollectionEndpointExampleRequest():
        return 'UpdateCollectionEndpointExampleRequest';
      case _i25.UpdateCollectionEndpointRequest():
        return 'UpdateCollectionEndpointRequest';
      case _i26.UpdateCollectionFolderRequest():
        return 'UpdateCollectionFolderRequest';
      case _i27.UpdateCollectionRequest():
        return 'UpdateCollectionRequest';
      case _i28.CreateEnvironmentRequest():
        return 'CreateEnvironmentRequest';
      case _i29.CreateEnvironmentVariableRequest():
        return 'CreateEnvironmentVariableRequest';
      case _i30.EnvironmentModel():
        return 'EnvironmentModel';
      case _i31.EnvironmentVariableModel():
        return 'EnvironmentVariableModel';
      case _i32.StoredEnvironment():
        return 'StoredEnvironment';
      case _i33.StoredEnvironmentVariable():
        return 'StoredEnvironmentVariable';
      case _i34.UpdateEnvironmentRequest():
        return 'UpdateEnvironmentRequest';
      case _i35.UpdateEnvironmentVariableRequest():
        return 'UpdateEnvironmentVariableRequest';
      case _i36.CreateWorkspaceExportRequest():
        return 'CreateWorkspaceExportRequest';
      case _i37.CreateWorkspaceImportRequest():
        return 'CreateWorkspaceImportRequest';
      case _i38.ImportExportJobModel():
        return 'ImportExportJobModel';
      case _i39.StoredImportExportJob():
        return 'StoredImportExportJob';
      case _i40.CreateRequestRunRequest():
        return 'CreateRequestRunRequest';
      case _i41.RequestRunDetailModel():
        return 'RequestRunDetailModel';
      case _i42.RequestRunModel():
        return 'RequestRunModel';
      case _i43.RequestRunRequestSnapshotModel():
        return 'RequestRunRequestSnapshotModel';
      case _i44.RequestRunResponseSnapshotModel():
        return 'RequestRunResponseSnapshotModel';
      case _i45.RunErrorModel():
        return 'RunErrorModel';
      case _i46.StoredRequestRun():
        return 'StoredRequestRun';
      case _i47.StoredRequestRunRequestSnapshot():
        return 'StoredRequestRunRequestSnapshot';
      case _i48.StoredRequestRunResponseSnapshot():
        return 'StoredRequestRunResponseSnapshot';
      case _i49.AcceptWorkspaceInvitationRequest():
        return 'AcceptWorkspaceInvitationRequest';
      case _i50.ConvertWorkspaceToTeamRequest():
        return 'ConvertWorkspaceToTeamRequest';
      case _i51.CreateWorkspaceInvitationRequest():
        return 'CreateWorkspaceInvitationRequest';
      case _i52.CreateWorkspaceRequest():
        return 'CreateWorkspaceRequest';
      case _i53.StoredWorkspace():
        return 'StoredWorkspace';
      case _i54.StoredWorkspaceEvent():
        return 'StoredWorkspaceEvent';
      case _i55.StoredWorkspaceInvitation():
        return 'StoredWorkspaceInvitation';
      case _i56.StoredWorkspaceMembership():
        return 'StoredWorkspaceMembership';
      case _i57.UpdateWorkspaceMemberRoleRequest():
        return 'UpdateWorkspaceMemberRoleRequest';
      case _i58.WorkspaceEventModel():
        return 'WorkspaceEventModel';
      case _i59.WorkspaceInvitationIssueModel():
        return 'WorkspaceInvitationIssueModel';
      case _i60.WorkspaceInvitationModel():
        return 'WorkspaceInvitationModel';
      case _i61.WorkspaceMemberModel():
        return 'WorkspaceMemberModel';
      case _i62.WorkspaceModel():
        return 'WorkspaceModel';
      case _i63.WorkspaceUpdatesQuery():
        return 'WorkspaceUpdatesQuery';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i4.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'AuthLoginRequest') {
      return deserialize<_i5.AuthLoginRequest>(data['data']);
    }
    if (dataClassName == 'AuthRefreshRequest') {
      return deserialize<_i6.AuthRefreshRequest>(data['data']);
    }
    if (dataClassName == 'AuthRegisterRequest') {
      return deserialize<_i7.AuthRegisterRequest>(data['data']);
    }
    if (dataClassName == 'AuthTokenPair') {
      return deserialize<_i8.AuthTokenPair>(data['data']);
    }
    if (dataClassName == 'AuthUserModel') {
      return deserialize<_i9.AuthUserModel>(data['data']);
    }
    if (dataClassName == 'StoredAuthSession') {
      return deserialize<_i10.StoredAuthSession>(data['data']);
    }
    if (dataClassName == 'StoredAuthUser') {
      return deserialize<_i11.StoredAuthUser>(data['data']);
    }
    if (dataClassName == 'CollectionEndpointExampleModel') {
      return deserialize<_i12.CollectionEndpointExampleModel>(data['data']);
    }
    if (dataClassName == 'CollectionEndpointModel') {
      return deserialize<_i13.CollectionEndpointModel>(data['data']);
    }
    if (dataClassName == 'CollectionFolderModel') {
      return deserialize<_i14.CollectionFolderModel>(data['data']);
    }
    if (dataClassName == 'CollectionModel') {
      return deserialize<_i15.CollectionModel>(data['data']);
    }
    if (dataClassName == 'CreateCollectionEndpointExampleRequest') {
      return deserialize<_i16.CreateCollectionEndpointExampleRequest>(
        data['data'],
      );
    }
    if (dataClassName == 'CreateCollectionEndpointRequest') {
      return deserialize<_i17.CreateCollectionEndpointRequest>(data['data']);
    }
    if (dataClassName == 'CreateCollectionFolderRequest') {
      return deserialize<_i18.CreateCollectionFolderRequest>(data['data']);
    }
    if (dataClassName == 'CreateCollectionRequest') {
      return deserialize<_i19.CreateCollectionRequest>(data['data']);
    }
    if (dataClassName == 'StoredCollection') {
      return deserialize<_i20.StoredCollection>(data['data']);
    }
    if (dataClassName == 'StoredCollectionEndpoint') {
      return deserialize<_i21.StoredCollectionEndpoint>(data['data']);
    }
    if (dataClassName == 'StoredCollectionEndpointExample') {
      return deserialize<_i22.StoredCollectionEndpointExample>(data['data']);
    }
    if (dataClassName == 'StoredCollectionFolder') {
      return deserialize<_i23.StoredCollectionFolder>(data['data']);
    }
    if (dataClassName == 'UpdateCollectionEndpointExampleRequest') {
      return deserialize<_i24.UpdateCollectionEndpointExampleRequest>(
        data['data'],
      );
    }
    if (dataClassName == 'UpdateCollectionEndpointRequest') {
      return deserialize<_i25.UpdateCollectionEndpointRequest>(data['data']);
    }
    if (dataClassName == 'UpdateCollectionFolderRequest') {
      return deserialize<_i26.UpdateCollectionFolderRequest>(data['data']);
    }
    if (dataClassName == 'UpdateCollectionRequest') {
      return deserialize<_i27.UpdateCollectionRequest>(data['data']);
    }
    if (dataClassName == 'CreateEnvironmentRequest') {
      return deserialize<_i28.CreateEnvironmentRequest>(data['data']);
    }
    if (dataClassName == 'CreateEnvironmentVariableRequest') {
      return deserialize<_i29.CreateEnvironmentVariableRequest>(data['data']);
    }
    if (dataClassName == 'EnvironmentModel') {
      return deserialize<_i30.EnvironmentModel>(data['data']);
    }
    if (dataClassName == 'EnvironmentVariableModel') {
      return deserialize<_i31.EnvironmentVariableModel>(data['data']);
    }
    if (dataClassName == 'StoredEnvironment') {
      return deserialize<_i32.StoredEnvironment>(data['data']);
    }
    if (dataClassName == 'StoredEnvironmentVariable') {
      return deserialize<_i33.StoredEnvironmentVariable>(data['data']);
    }
    if (dataClassName == 'UpdateEnvironmentRequest') {
      return deserialize<_i34.UpdateEnvironmentRequest>(data['data']);
    }
    if (dataClassName == 'UpdateEnvironmentVariableRequest') {
      return deserialize<_i35.UpdateEnvironmentVariableRequest>(data['data']);
    }
    if (dataClassName == 'CreateWorkspaceExportRequest') {
      return deserialize<_i36.CreateWorkspaceExportRequest>(data['data']);
    }
    if (dataClassName == 'CreateWorkspaceImportRequest') {
      return deserialize<_i37.CreateWorkspaceImportRequest>(data['data']);
    }
    if (dataClassName == 'ImportExportJobModel') {
      return deserialize<_i38.ImportExportJobModel>(data['data']);
    }
    if (dataClassName == 'StoredImportExportJob') {
      return deserialize<_i39.StoredImportExportJob>(data['data']);
    }
    if (dataClassName == 'CreateRequestRunRequest') {
      return deserialize<_i40.CreateRequestRunRequest>(data['data']);
    }
    if (dataClassName == 'RequestRunDetailModel') {
      return deserialize<_i41.RequestRunDetailModel>(data['data']);
    }
    if (dataClassName == 'RequestRunModel') {
      return deserialize<_i42.RequestRunModel>(data['data']);
    }
    if (dataClassName == 'RequestRunRequestSnapshotModel') {
      return deserialize<_i43.RequestRunRequestSnapshotModel>(data['data']);
    }
    if (dataClassName == 'RequestRunResponseSnapshotModel') {
      return deserialize<_i44.RequestRunResponseSnapshotModel>(data['data']);
    }
    if (dataClassName == 'RunErrorModel') {
      return deserialize<_i45.RunErrorModel>(data['data']);
    }
    if (dataClassName == 'StoredRequestRun') {
      return deserialize<_i46.StoredRequestRun>(data['data']);
    }
    if (dataClassName == 'StoredRequestRunRequestSnapshot') {
      return deserialize<_i47.StoredRequestRunRequestSnapshot>(data['data']);
    }
    if (dataClassName == 'StoredRequestRunResponseSnapshot') {
      return deserialize<_i48.StoredRequestRunResponseSnapshot>(data['data']);
    }
    if (dataClassName == 'AcceptWorkspaceInvitationRequest') {
      return deserialize<_i49.AcceptWorkspaceInvitationRequest>(data['data']);
    }
    if (dataClassName == 'ConvertWorkspaceToTeamRequest') {
      return deserialize<_i50.ConvertWorkspaceToTeamRequest>(data['data']);
    }
    if (dataClassName == 'CreateWorkspaceInvitationRequest') {
      return deserialize<_i51.CreateWorkspaceInvitationRequest>(data['data']);
    }
    if (dataClassName == 'CreateWorkspaceRequest') {
      return deserialize<_i52.CreateWorkspaceRequest>(data['data']);
    }
    if (dataClassName == 'StoredWorkspace') {
      return deserialize<_i53.StoredWorkspace>(data['data']);
    }
    if (dataClassName == 'StoredWorkspaceEvent') {
      return deserialize<_i54.StoredWorkspaceEvent>(data['data']);
    }
    if (dataClassName == 'StoredWorkspaceInvitation') {
      return deserialize<_i55.StoredWorkspaceInvitation>(data['data']);
    }
    if (dataClassName == 'StoredWorkspaceMembership') {
      return deserialize<_i56.StoredWorkspaceMembership>(data['data']);
    }
    if (dataClassName == 'UpdateWorkspaceMemberRoleRequest') {
      return deserialize<_i57.UpdateWorkspaceMemberRoleRequest>(data['data']);
    }
    if (dataClassName == 'WorkspaceEventModel') {
      return deserialize<_i58.WorkspaceEventModel>(data['data']);
    }
    if (dataClassName == 'WorkspaceInvitationIssueModel') {
      return deserialize<_i59.WorkspaceInvitationIssueModel>(data['data']);
    }
    if (dataClassName == 'WorkspaceInvitationModel') {
      return deserialize<_i60.WorkspaceInvitationModel>(data['data']);
    }
    if (dataClassName == 'WorkspaceMemberModel') {
      return deserialize<_i61.WorkspaceMemberModel>(data['data']);
    }
    if (dataClassName == 'WorkspaceModel') {
      return deserialize<_i62.WorkspaceModel>(data['data']);
    }
    if (dataClassName == 'WorkspaceUpdatesQuery') {
      return deserialize<_i63.WorkspaceUpdatesQuery>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i4.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i4.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i10.StoredAuthSession:
        return _i10.StoredAuthSession.t;
      case _i11.StoredAuthUser:
        return _i11.StoredAuthUser.t;
      case _i20.StoredCollection:
        return _i20.StoredCollection.t;
      case _i21.StoredCollectionEndpoint:
        return _i21.StoredCollectionEndpoint.t;
      case _i22.StoredCollectionEndpointExample:
        return _i22.StoredCollectionEndpointExample.t;
      case _i23.StoredCollectionFolder:
        return _i23.StoredCollectionFolder.t;
      case _i32.StoredEnvironment:
        return _i32.StoredEnvironment.t;
      case _i33.StoredEnvironmentVariable:
        return _i33.StoredEnvironmentVariable.t;
      case _i39.StoredImportExportJob:
        return _i39.StoredImportExportJob.t;
      case _i46.StoredRequestRun:
        return _i46.StoredRequestRun.t;
      case _i47.StoredRequestRunRequestSnapshot:
        return _i47.StoredRequestRunRequestSnapshot.t;
      case _i48.StoredRequestRunResponseSnapshot:
        return _i48.StoredRequestRunResponseSnapshot.t;
      case _i53.StoredWorkspace:
        return _i53.StoredWorkspace.t;
      case _i54.StoredWorkspaceEvent:
        return _i54.StoredWorkspaceEvent.t;
      case _i55.StoredWorkspaceInvitation:
        return _i55.StoredWorkspaceInvitation.t;
      case _i56.StoredWorkspaceMembership:
        return _i56.StoredWorkspaceMembership.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'relay_server';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i3.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i4.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
