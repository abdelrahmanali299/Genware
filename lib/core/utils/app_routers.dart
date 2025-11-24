import 'package:genware/features/auth/presentation/views/login_view.dart';
import 'package:genware/features/auth/presentation/views/signup_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kLoginView = '/loginview';
  static const kSignupView = '/signupview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const LoginView()),
      // GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
