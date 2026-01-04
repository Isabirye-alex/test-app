import 'package:go_router/go_router.dart';
import 'package:test_app/feature/admin/admin_shell.dart';
import 'package:test_app/feature/categories/presentation/views/categories_screen.dart';
import 'package:test_app/feature/dashboard/presentation/views/main_screen.dart';
import 'package:test_app/feature/favorites/presentation/views/favorites.dart';
import 'package:test_app/feature/home/presentation/views/home.dart';
import 'package:test_app/feature/profile/presentation/views/profile.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/home', // Default route on app start
    routes: [
      ShellRoute(
        builder: (context, state, child) => RouteShell(child: child),
        routes: [
          // Landing page route
          GoRoute(path: '/home', builder: (context, state) => Home()),
          GoRoute(
            path: '/categories',
            builder: (context, state) => Categories()),
          
          GoRoute(path: '/favorites', builder: (context, state) => Favorites()),
          GoRoute(path: '/profile', builder: (context, state) => Profile()),
          GoRoute(path: '/admin', builder: (context, state) => AdminShell()),
        ],
      ),
    ],
  );
}
