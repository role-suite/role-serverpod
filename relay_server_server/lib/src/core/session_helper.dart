import 'package:serverpod/serverpod.dart';

/// Shared session/auth helpers used across features.
/// Centralizes user identity so auth can be swapped (e.g. serverpod_auth) in one place.
abstract final class SessionHelper {
  SessionHelper._();

  /// Returns a stable user id for the current session.
  /// Replace with [session.auth?.userId] when using Serverpod auth (e.g. serverpod_auth_email).
  static int getUserId(Session session) {
    // TODO: when using serverpod_auth: return session.auth?.userId ?? 0;
    return 0;
  }
}
