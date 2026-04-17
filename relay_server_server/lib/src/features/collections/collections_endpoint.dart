import 'package:serverpod/serverpod.dart';

import 'package:relay_server_server/src/core/guards/auth_guard.dart';
import 'package:relay_server_server/src/features/collections/services/collections_service.dart';
import 'package:relay_server_server/src/generated/protocol.dart';

class CollectionsEndpoint extends Endpoint {
  CollectionsEndpoint({CollectionsService? service})
    : _service = service ?? CollectionsService();

  final CollectionsService _service;

  Future<List<CollectionModel>> list(Session session, int workspaceId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listForWorkspace(
      session,
      userId: userId,
      workspaceId: workspaceId,
    );
  }

  Future<CollectionModel> get(
    Session session,
    int workspaceId,
    int collectionId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.getById(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
    );
  }

  Future<CollectionModel> create(
    Session session,
    CreateCollectionRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.create(session, userId: userId, request: request);
  }

  Future<CollectionModel> update(
    Session session,
    UpdateCollectionRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.update(session, userId: userId, request: request);
  }

  Future<void> remove(Session session, int workspaceId, int collectionId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.remove(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
    );
  }

  Future<List<CollectionFolderModel>> listFolders(
    Session session,
    int workspaceId,
    int collectionId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listFolders(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
    );
  }

  Future<CollectionFolderModel> createFolder(
    Session session,
    CreateCollectionFolderRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createFolder(session, userId: userId, request: request);
  }

  Future<CollectionFolderModel> updateFolder(
    Session session,
    UpdateCollectionFolderRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.updateFolder(session, userId: userId, request: request);
  }

  Future<void> removeFolder(
    Session session,
    int workspaceId,
    int collectionId,
    int folderId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.removeFolder(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
      folderId: folderId,
    );
  }

  Future<List<CollectionEndpointModel>> listEndpoints(
    Session session,
    int workspaceId,
    int collectionId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listEndpoints(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
    );
  }

  Future<CollectionEndpointModel> createEndpoint(
    Session session,
    CreateCollectionEndpointRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createEndpoint(session, userId: userId, request: request);
  }

  Future<CollectionEndpointModel> updateEndpoint(
    Session session,
    UpdateCollectionEndpointRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.updateEndpoint(session, userId: userId, request: request);
  }

  Future<void> removeEndpoint(
    Session session,
    int workspaceId,
    int collectionId,
    int endpointId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.removeEndpoint(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
      endpointId: endpointId,
    );
  }

  Future<List<CollectionEndpointExampleModel>> listEndpointExamples(
    Session session,
    int workspaceId,
    int collectionId,
    int endpointId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listEndpointExamples(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
      endpointId: endpointId,
    );
  }

  Future<CollectionEndpointExampleModel> createEndpointExample(
    Session session,
    CreateCollectionEndpointExampleRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createEndpointExample(
      session,
      userId: userId,
      request: request,
    );
  }

  Future<CollectionEndpointExampleModel> updateEndpointExample(
    Session session,
    UpdateCollectionEndpointExampleRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.updateEndpointExample(
      session,
      userId: userId,
      request: request,
    );
  }

  Future<void> removeEndpointExample(
    Session session,
    int workspaceId,
    int collectionId,
    int endpointId,
    int exampleId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.removeEndpointExample(
      session,
      userId: userId,
      workspaceId: workspaceId,
      collectionId: collectionId,
      endpointId: endpointId,
      exampleId: exampleId,
    );
  }
}
