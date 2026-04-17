import 'package:serverpod/serverpod.dart';

import 'package:relay_server_server/src/core/guards/auth_guard.dart';
import 'package:relay_server_server/src/features/runs/services/runs_service.dart';
import 'package:relay_server_server/src/generated/protocol.dart';

class RunsEndpoint extends Endpoint {
  RunsEndpoint({RunsService? service}) : _service = service ?? RunsService();

  final RunsService _service;

  Future<List<RequestRunModel>> list(Session session, int workspaceId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.listRuns(session, userId: userId, workspaceId: workspaceId);
  }

  Future<RequestRunDetailModel> get(
    Session session,
    int workspaceId,
    int runId,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.getRun(
      session,
      userId: userId,
      workspaceId: workspaceId,
      runId: runId,
    );
  }

  Future<RequestRunDetailModel> create(
    Session session,
    CreateRequestRunRequest request,
  ) {
    final userId = AuthGuard.requireUserId(session);
    return _service.createRun(session, userId: userId, request: request);
  }

  Future<RequestRunModel> cancel(Session session, int workspaceId, int runId) {
    final userId = AuthGuard.requireUserId(session);
    return _service.cancelRun(
      session,
      userId: userId,
      workspaceId: workspaceId,
      runId: runId,
    );
  }
}
