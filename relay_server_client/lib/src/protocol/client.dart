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
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:relay_server_client/src/protocol/features/collections/models/collection_model.dart'
    as _i3;
import 'package:relay_server_client/src/protocol/features/environments/models/environment_model.dart'
    as _i4;
import 'package:relay_server_client/src/protocol/features/requests/models/api_request_model.dart'
    as _i5;
import 'package:relay_server_client/src/protocol/features/workspace/models/workspace_bundle.dart'
    as _i6;
import 'protocol.dart' as _i7;

/// CRUD endpoint for collections per user.
/// {@category Endpoint}
class EndpointCollections extends _i1.EndpointRef {
  EndpointCollections(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'collections';

  _i2.Future<List<_i3.CollectionModel>> list() =>
      caller.callServerEndpoint<List<_i3.CollectionModel>>(
        'collections',
        'list',
        {},
      );

  _i2.Future<_i3.CollectionModel?> get(String collectionId) =>
      caller.callServerEndpoint<_i3.CollectionModel?>(
        'collections',
        'get',
        {'collectionId': collectionId},
      );

  _i2.Future<void> create(_i3.CollectionModel collection) =>
      caller.callServerEndpoint<void>(
        'collections',
        'create',
        {'collection': collection},
      );

  _i2.Future<void> update(_i3.CollectionModel collection) =>
      caller.callServerEndpoint<void>(
        'collections',
        'update',
        {'collection': collection},
      );

  _i2.Future<void> delete(String collectionId) =>
      caller.callServerEndpoint<void>(
        'collections',
        'delete',
        {'collectionId': collectionId},
      );
}

/// CRUD endpoint for environments per user.
/// {@category Endpoint}
class EndpointEnvironments extends _i1.EndpointRef {
  EndpointEnvironments(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'environments';

  _i2.Future<List<_i4.EnvironmentModel>> list() =>
      caller.callServerEndpoint<List<_i4.EnvironmentModel>>(
        'environments',
        'list',
        {},
      );

  _i2.Future<_i4.EnvironmentModel?> get(String name) =>
      caller.callServerEndpoint<_i4.EnvironmentModel?>(
        'environments',
        'get',
        {'name': name},
      );

  _i2.Future<void> create(_i4.EnvironmentModel environment) =>
      caller.callServerEndpoint<void>(
        'environments',
        'create',
        {'environment': environment},
      );

  _i2.Future<void> update(_i4.EnvironmentModel environment) =>
      caller.callServerEndpoint<void>(
        'environments',
        'update',
        {'environment': environment},
      );

  _i2.Future<void> delete(String name) => caller.callServerEndpoint<void>(
    'environments',
    'delete',
    {'name': name},
  );
}

/// CRUD endpoint for requests per user (scoped by collection).
/// {@category Endpoint}
class EndpointRequests extends _i1.EndpointRef {
  EndpointRequests(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'requests';

  _i2.Future<List<_i5.ApiRequestModel>> list(String collectionId) =>
      caller.callServerEndpoint<List<_i5.ApiRequestModel>>(
        'requests',
        'list',
        {'collectionId': collectionId},
      );

  _i2.Future<_i5.ApiRequestModel?> get(String requestId) =>
      caller.callServerEndpoint<_i5.ApiRequestModel?>(
        'requests',
        'get',
        {'requestId': requestId},
      );

  _i2.Future<void> create(_i5.ApiRequestModel request) =>
      caller.callServerEndpoint<void>(
        'requests',
        'create',
        {'request': request},
      );

  _i2.Future<void> update(_i5.ApiRequestModel request) =>
      caller.callServerEndpoint<void>(
        'requests',
        'update',
        {'request': request},
      );

  _i2.Future<void> delete(String requestId) => caller.callServerEndpoint<void>(
    'requests',
    'delete',
    {'requestId': requestId},
  );
}

/// Endpoint for syncing Röle workspace (collections + requests + environments).
/// Delegates storage to [WorkspaceRepository] (database) and user identity to [SessionHelper].
/// {@category Endpoint}
class EndpointWorkspace extends _i1.EndpointRef {
  EndpointWorkspace(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'workspace';

  /// Pull the current user's workspace from the server.
  _i2.Future<_i6.WorkspaceBundle?> pullWorkspace() =>
      caller.callServerEndpoint<_i6.WorkspaceBundle?>(
        'workspace',
        'pullWorkspace',
        {},
      );

  /// Push (overwrite) the current user's workspace on the server.
  _i2.Future<void> pushWorkspace(_i6.WorkspaceBundle bundle) =>
      caller.callServerEndpoint<void>(
        'workspace',
        'pushWorkspace',
        {'bundle': bundle},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i7.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    collections = EndpointCollections(this);
    environments = EndpointEnvironments(this);
    requests = EndpointRequests(this);
    workspace = EndpointWorkspace(this);
  }

  late final EndpointCollections collections;

  late final EndpointEnvironments environments;

  late final EndpointRequests requests;

  late final EndpointWorkspace workspace;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'collections': collections,
    'environments': environments,
    'requests': requests,
    'workspace': workspace,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
