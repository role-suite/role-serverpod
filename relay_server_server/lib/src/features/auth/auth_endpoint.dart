import 'package:serverpod/serverpod.dart';

import 'package:relay_server_server/src/features/auth/services/auth_service.dart';
import 'package:relay_server_server/src/generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  AuthEndpoint({AuthService? authService})
    : _authService = authService ?? AuthService();

  final AuthService _authService;

  @unauthenticatedClientCall
  Future<AuthTokenPair> register(Session session, AuthRegisterRequest request) {
    return _authService.register(session, request);
  }

  @unauthenticatedClientCall
  Future<AuthTokenPair> login(Session session, AuthLoginRequest request) {
    return _authService.login(session, request);
  }

  @unauthenticatedClientCall
  Future<AuthTokenPair> refresh(Session session, AuthRefreshRequest request) {
    return _authService.refresh(session, request);
  }

  @unauthenticatedClientCall
  Future<void> logout(Session session, AuthRefreshRequest request) {
    return _authService.logout(session, request);
  }

  Future<AuthUserModel> me(Session session) {
    return _authService.me(session);
  }
}
