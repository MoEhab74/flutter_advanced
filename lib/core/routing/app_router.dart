import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_routes.dart';
import 'package:flutter_advanced/features/on_boarding/onboarding_view.dart';
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
      ],
      // Default route when no matching route is found
      errorBuilder: (context, state) =>
          const Scaffold(body: Center(child: Text('Error: No route found.'))),
    );
  }
}
