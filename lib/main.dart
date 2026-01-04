import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:flutter/material.dart";
import "package:test_app/routes/app_router.dart";
import "package:test_app/core/theme/app_theme.dart";

void main() {
  runApp(ProviderScope(child: TestApp()));
}

class TestApp extends ConsumerWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
