import 'package:genware/main.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const GenWare()),
    ],
  );
}
