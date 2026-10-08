import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_routes.dart';
import 'package:flutter_advanced/core/services/get_it_sevice.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/login/login_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/views/login_view.dart';
import 'package:flutter_advanced/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter_advanced/features/on_boarding/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static late final GoRouter router;
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void setupRouter() {
    router = GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      // Check for the first time the user opens the app to show the onboarding screen
      // Check if user isLoggedIn or not before showing the login screen
      // If not logged in, show login, else show home screen
      initialLocation: AppRoutes.onBoarding,
      routes: [
        GoRoute(
          path: AppRoutes.onBoarding,
          builder: (context, state) => const OnBoardingScreen(),
        ),
        GoRoute(
          path: AppRoutes.login,
          builder: (context, state) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        ),
        GoRoute(
          path: AppRoutes.register,
          builder: (context, state) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpView(),
          ),
        ),
      ],
      // Default route when no matching route is found
      errorBuilder: (context, state) =>
          const Scaffold(body: Center(child: Text('Error: No route found.'))),
    );
  }
}
