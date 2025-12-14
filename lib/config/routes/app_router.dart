import 'package:go_router/go_router.dart';
import 'package:test_app/config/routes/route_shell.dart';
import 'package:test_app/core/widgets/screens/categories.dart';
import 'package:test_app/core/widgets/screens/favorites.dart';
import 'package:test_app/core/widgets/screens/home.dart';
import 'package:test_app/core/widgets/screens/profile.dart';


class AppRouter {
  static final router = GoRouter(
    initialLocation: '/home', // Default route on app start
    routes: [

      ShellRoute(
        builder: (context, state, child) => RouteShell(child: child),
        routes: [
          // Landing page route
          GoRoute(
            path: '/home',
            builder: (context, state) => Home(),
          ),
                    GoRoute(
            path: '/categories',
            builder: (context, state) => Categories(),
          ),
                    GoRoute(
            path: '/favorites',
            builder: (context, state) => Favorites(),
          ),
                    GoRoute(
            path: '/profile',
            builder: (context, state) => Profile(),
          ),
        ],
      ),
    ],
  );
}
