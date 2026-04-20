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
import '../features/auth/auth_endpoint.dart' as _i2;
import '../features/collections/collections_endpoint.dart' as _i3;
import '../features/environments/environments_endpoint.dart' as _i4;
import '../features/import_export/import_export_endpoint.dart' as _i5;
import '../features/runs/runs_endpoint.dart' as _i6;
import '../features/workspaces/workspaces_endpoint.dart' as _i7;
import 'package:relay_server_server/src/generated/features/auth/models/auth_register_request.dart'
    as _i8;
import 'package:relay_server_server/src/generated/features/auth/models/auth_login_request.dart'
    as _i9;
import 'package:relay_server_server/src/generated/features/auth/models/auth_refresh_request.dart'
    as _i10;
import 'package:relay_server_server/src/generated/features/collections/models/create_collection_request.dart'
    as _i11;
import 'package:relay_server_server/src/generated/features/collections/models/update_collection_request.dart'
    as _i12;
import 'package:relay_server_server/src/generated/features/collections/models/create_collection_folder_request.dart'
    as _i13;
import 'package:relay_server_server/src/generated/features/collections/models/update_collection_folder_request.dart'
    as _i14;
import 'package:relay_server_server/src/generated/features/collections/models/create_collection_endpoint_request.dart'
    as _i15;
import 'package:relay_server_server/src/generated/features/collections/models/update_collection_endpoint_request.dart'
    as _i16;
import 'package:relay_server_server/src/generated/features/collections/models/create_collection_endpoint_example_request.dart'
    as _i17;
import 'package:relay_server_server/src/generated/features/collections/models/update_collection_endpoint_example_request.dart'
    as _i18;
import 'package:relay_server_server/src/generated/features/environments/models/create_environment_request.dart'
    as _i19;
import 'package:relay_server_server/src/generated/features/environments/models/update_environment_request.dart'
    as _i20;
import 'package:relay_server_server/src/generated/features/environments/models/create_environment_variable_request.dart'
    as _i21;
import 'package:relay_server_server/src/generated/features/environments/models/update_environment_variable_request.dart'
    as _i22;
import 'package:relay_server_server/src/generated/features/import_export/models/create_workspace_export_request.dart'
    as _i23;
import 'package:relay_server_server/src/generated/features/import_export/models/create_workspace_import_request.dart'
    as _i24;
import 'package:relay_server_server/src/generated/features/runs/models/create_request_run_request.dart'
    as _i25;
import 'package:relay_server_server/src/generated/features/workspaces/models/create_workspace_request.dart'
    as _i26;
import 'package:relay_server_server/src/generated/features/workspaces/models/create_workspace_invitation_request.dart'
    as _i27;
import 'package:relay_server_server/src/generated/features/workspaces/models/accept_workspace_invitation_request.dart'
    as _i28;
import 'package:relay_server_server/src/generated/features/workspaces/models/update_workspace_member_role_request.dart'
    as _i29;
import 'package:relay_server_server/src/generated/features/workspaces/models/convert_workspace_to_team_request.dart'
    as _i30;
import 'package:relay_server_server/src/generated/features/workspaces/models/workspace_updates_query.dart'
    as _i31;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i32;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i33;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'auth': _i2.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'collections': _i3.CollectionsEndpoint()
        ..initialize(
          server,
          'collections',
          null,
        ),
      'environments': _i4.EnvironmentsEndpoint()
        ..initialize(
          server,
          'environments',
          null,
        ),
      'importExport': _i5.ImportExportEndpoint()
        ..initialize(
          server,
          'importExport',
          null,
        ),
      'runs': _i6.RunsEndpoint()
        ..initialize(
          server,
          'runs',
          null,
        ),
      'workspaces': _i7.WorkspacesEndpoint()
        ..initialize(
          server,
          'workspaces',
          null,
        ),
    };
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i8.AuthRegisterRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i2.AuthEndpoint).register(
                session,
                params['request'],
              ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i9.AuthLoginRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i2.AuthEndpoint).login(
                session,
                params['request'],
              ),
        ),
        'refresh': _i1.MethodConnector(
          name: 'refresh',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i10.AuthRefreshRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i2.AuthEndpoint).refresh(
                session,
                params['request'],
              ),
        ),
        'logout': _i1.MethodConnector(
          name: 'logout',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i10.AuthRefreshRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i2.AuthEndpoint).logout(
                session,
                params['request'],
              ),
        ),
        'me': _i1.MethodConnector(
          name: 'me',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i2.AuthEndpoint).me(session),
        ),
      },
    );
    connectors['collections'] = _i1.EndpointConnector(
      name: 'collections',
      endpoint: endpoints['collections']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['collections'] as _i3.CollectionsEndpoint).list(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'get': _i1.MethodConnector(
          name: 'get',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['collections'] as _i3.CollectionsEndpoint).get(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i11.CreateCollectionRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['collections'] as _i3.CollectionsEndpoint).create(
                    session,
                    params['request'],
                  ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i12.UpdateCollectionRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['collections'] as _i3.CollectionsEndpoint).update(
                    session,
                    params['request'],
                  ),
        ),
        'remove': _i1.MethodConnector(
          name: 'remove',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['collections'] as _i3.CollectionsEndpoint).remove(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                  ),
        ),
        'listFolders': _i1.MethodConnector(
          name: 'listFolders',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .listFolders(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                  ),
        ),
        'createFolder': _i1.MethodConnector(
          name: 'createFolder',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i13.CreateCollectionFolderRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .createFolder(
                    session,
                    params['request'],
                  ),
        ),
        'updateFolder': _i1.MethodConnector(
          name: 'updateFolder',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i14.UpdateCollectionFolderRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .updateFolder(
                    session,
                    params['request'],
                  ),
        ),
        'removeFolder': _i1.MethodConnector(
          name: 'removeFolder',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'folderId': _i1.ParameterDescription(
              name: 'folderId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .removeFolder(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                    params['folderId'],
                  ),
        ),
        'listEndpoints': _i1.MethodConnector(
          name: 'listEndpoints',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .listEndpoints(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                  ),
        ),
        'createEndpoint': _i1.MethodConnector(
          name: 'createEndpoint',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i15.CreateCollectionEndpointRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .createEndpoint(
                    session,
                    params['request'],
                  ),
        ),
        'updateEndpoint': _i1.MethodConnector(
          name: 'updateEndpoint',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i16.UpdateCollectionEndpointRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .updateEndpoint(
                    session,
                    params['request'],
                  ),
        ),
        'removeEndpoint': _i1.MethodConnector(
          name: 'removeEndpoint',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'endpointId': _i1.ParameterDescription(
              name: 'endpointId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .removeEndpoint(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                    params['endpointId'],
                  ),
        ),
        'listEndpointExamples': _i1.MethodConnector(
          name: 'listEndpointExamples',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'endpointId': _i1.ParameterDescription(
              name: 'endpointId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .listEndpointExamples(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                    params['endpointId'],
                  ),
        ),
        'createEndpointExample': _i1.MethodConnector(
          name: 'createEndpointExample',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i17.CreateCollectionEndpointExampleRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .createEndpointExample(
                    session,
                    params['request'],
                  ),
        ),
        'updateEndpointExample': _i1.MethodConnector(
          name: 'updateEndpointExample',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i18.UpdateCollectionEndpointExampleRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .updateEndpointExample(
                    session,
                    params['request'],
                  ),
        ),
        'removeEndpointExample': _i1.MethodConnector(
          name: 'removeEndpointExample',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'collectionId': _i1.ParameterDescription(
              name: 'collectionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'endpointId': _i1.ParameterDescription(
              name: 'endpointId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'exampleId': _i1.ParameterDescription(
              name: 'exampleId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['collections'] as _i3.CollectionsEndpoint)
                  .removeEndpointExample(
                    session,
                    params['workspaceId'],
                    params['collectionId'],
                    params['endpointId'],
                    params['exampleId'],
                  ),
        ),
      },
    );
    connectors['environments'] = _i1.EndpointConnector(
      name: 'environments',
      endpoint: endpoints['environments']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['environments'] as _i4.EnvironmentsEndpoint).list(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'get': _i1.MethodConnector(
          name: 'get',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'environmentId': _i1.ParameterDescription(
              name: 'environmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['environments'] as _i4.EnvironmentsEndpoint).get(
                    session,
                    params['workspaceId'],
                    params['environmentId'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i19.CreateEnvironmentRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .create(
                    session,
                    params['request'],
                  ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i20.UpdateEnvironmentRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .update(
                    session,
                    params['request'],
                  ),
        ),
        'remove': _i1.MethodConnector(
          name: 'remove',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'environmentId': _i1.ParameterDescription(
              name: 'environmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .remove(
                    session,
                    params['workspaceId'],
                    params['environmentId'],
                  ),
        ),
        'listVariables': _i1.MethodConnector(
          name: 'listVariables',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'environmentId': _i1.ParameterDescription(
              name: 'environmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .listVariables(
                    session,
                    params['workspaceId'],
                    params['environmentId'],
                  ),
        ),
        'createVariable': _i1.MethodConnector(
          name: 'createVariable',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i21.CreateEnvironmentVariableRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .createVariable(
                    session,
                    params['request'],
                  ),
        ),
        'updateVariable': _i1.MethodConnector(
          name: 'updateVariable',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i22.UpdateEnvironmentVariableRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .updateVariable(
                    session,
                    params['request'],
                  ),
        ),
        'removeVariable': _i1.MethodConnector(
          name: 'removeVariable',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'environmentId': _i1.ParameterDescription(
              name: 'environmentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'variableId': _i1.ParameterDescription(
              name: 'variableId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['environments'] as _i4.EnvironmentsEndpoint)
                  .removeVariable(
                    session,
                    params['workspaceId'],
                    params['environmentId'],
                    params['variableId'],
                  ),
        ),
      },
    );
    connectors['importExport'] = _i1.EndpointConnector(
      name: 'importExport',
      endpoint: endpoints['importExport']!,
      methodConnectors: {
        'listJobs': _i1.MethodConnector(
          name: 'listJobs',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['importExport'] as _i5.ImportExportEndpoint)
                  .listJobs(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'getJobById': _i1.MethodConnector(
          name: 'getJobById',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'jobId': _i1.ParameterDescription(
              name: 'jobId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['importExport'] as _i5.ImportExportEndpoint)
                  .getJobById(
                    session,
                    params['workspaceId'],
                    params['jobId'],
                  ),
        ),
        'createExport': _i1.MethodConnector(
          name: 'createExport',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i23.CreateWorkspaceExportRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['importExport'] as _i5.ImportExportEndpoint)
                  .createExport(
                    session,
                    params['request'],
                  ),
        ),
        'createImport': _i1.MethodConnector(
          name: 'createImport',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i24.CreateWorkspaceImportRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['importExport'] as _i5.ImportExportEndpoint)
                  .createImport(
                    session,
                    params['request'],
                  ),
        ),
      },
    );
    connectors['runs'] = _i1.EndpointConnector(
      name: 'runs',
      endpoint: endpoints['runs']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['runs'] as _i6.RunsEndpoint).list(
                session,
                params['workspaceId'],
              ),
        ),
        'get': _i1.MethodConnector(
          name: 'get',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'runId': _i1.ParameterDescription(
              name: 'runId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['runs'] as _i6.RunsEndpoint).get(
                session,
                params['workspaceId'],
                params['runId'],
              ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i25.CreateRequestRunRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['runs'] as _i6.RunsEndpoint).create(
                session,
                params['request'],
              ),
        ),
        'cancel': _i1.MethodConnector(
          name: 'cancel',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'runId': _i1.ParameterDescription(
              name: 'runId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['runs'] as _i6.RunsEndpoint).cancel(
                session,
                params['workspaceId'],
                params['runId'],
              ),
        ),
      },
    );
    connectors['workspaces'] = _i1.EndpointConnector(
      name: 'workspaces',
      endpoint: endpoints['workspaces']!,
      methodConnectors: {
        'list': _i1.MethodConnector(
          name: 'list',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .list(session),
        ),
        'get': _i1.MethodConnector(
          name: 'get',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['workspaces'] as _i7.WorkspacesEndpoint).get(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i26.CreateWorkspaceRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['workspaces'] as _i7.WorkspacesEndpoint).create(
                    session,
                    params['request'],
                  ),
        ),
        'listMembers': _i1.MethodConnector(
          name: 'listMembers',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .listMembers(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'createInvitation': _i1.MethodConnector(
          name: 'createInvitation',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i27.CreateWorkspaceInvitationRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .createInvitation(
                    session,
                    params['request'],
                  ),
        ),
        'acceptInvitation': _i1.MethodConnector(
          name: 'acceptInvitation',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i28.AcceptWorkspaceInvitationRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .acceptInvitation(
                    session,
                    params['request'],
                  ),
        ),
        'updateMemberRole': _i1.MethodConnector(
          name: 'updateMemberRole',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i29.UpdateWorkspaceMemberRoleRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .updateMemberRole(
                    session,
                    params['request'],
                  ),
        ),
        'removeMember': _i1.MethodConnector(
          name: 'removeMember',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'memberUserId': _i1.ParameterDescription(
              name: 'memberUserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .removeMember(
                    session,
                    params['workspaceId'],
                    params['memberUserId'],
                  ),
        ),
        'leave': _i1.MethodConnector(
          name: 'leave',
          params: {
            'workspaceId': _i1.ParameterDescription(
              name: 'workspaceId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['workspaces'] as _i7.WorkspacesEndpoint).leave(
                    session,
                    params['workspaceId'],
                  ),
        ),
        'convertToTeam': _i1.MethodConnector(
          name: 'convertToTeam',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i30.ConvertWorkspaceToTeamRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .convertToTeam(
                    session,
                    params['request'],
                  ),
        ),
        'listUpdates': _i1.MethodConnector(
          name: 'listUpdates',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<_i31.WorkspaceUpdatesQuery>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['workspaces'] as _i7.WorkspacesEndpoint)
                  .listUpdates(
                    session,
                    params['query'],
                  ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i32.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i33.Endpoints()
      ..initializeEndpoints(server);
  }
}
