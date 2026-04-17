import 'package:serverpod/serverpod.dart';

import 'package:relay_server_server/src/core/guards/auth_guard.dart';
import 'package:relay_server_server/src/features/workspaces/services/workspaces_service.dart';
import 'package:relay_server_server/src/generated/protocol.dart';

class WorkspacesEndpoint extends Endpoint {
  WorkspacesEndpoint({WorkspacesService? service})
    : _service = service ?? WorkspacesService();

  final WorkspacesService _service;

  Future<List<WorkspaceModel>> list(Session session) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listForUser(session, userId);
  }

  Future<WorkspaceModel> get(Session session, int workspaceId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.getByIdForUser(
      session,
      userId: userId,
      workspaceId: workspaceId,
    );
  }

  Future<WorkspaceModel> create(
    Session session,
    CreateWorkspaceRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createForUser(session, userId: userId, request: request);
  }

  Future<List<WorkspaceMemberModel>> listMembers(
    Session session,
    int workspaceId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listMembers(
      session,
      userId: userId,
      workspaceId: workspaceId,
    );
  }

  Future<WorkspaceInvitationIssueModel> createInvitation(
    Session session,
    CreateWorkspaceInvitationRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createInvitation(
      session,
      actorUserId: userId,
      request: request,
    );
  }

  Future<WorkspaceModel> acceptInvitation(
    Session session,
    AcceptWorkspaceInvitationRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.acceptInvitation(session, userId: userId, request: request);
  }

  Future<WorkspaceMemberModel> updateMemberRole(
    Session session,
    UpdateWorkspaceMemberRoleRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.updateMemberRole(
      session,
      actorUserId: userId,
      request: request,
    );
  }

  Future<void> removeMember(
    Session session,
    int workspaceId,
    int memberUserId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.removeMember(
      session,
      actorUserId: userId,
      workspaceId: workspaceId,
      memberUserId: memberUserId,
    );
  }

  Future<void> leave(Session session, int workspaceId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.leaveWorkspace(
      session,
      userId: userId,
      workspaceId: workspaceId,
    );
  }

  Future<WorkspaceModel> convertToTeam(
    Session session,
    ConvertWorkspaceToTeamRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.convertToTeam(session, userId: userId, request: request);
  }

  Future<List<WorkspaceEventModel>> listUpdates(
    Session session,
    WorkspaceUpdatesQuery query,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listUpdates(session, userId: userId, query: query);
  }
}
