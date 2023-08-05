import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../receipt/presentation/receipt_screen.dart';
import '../theme/app_theme.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) => '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ReceiptScreen(),
    )
  ],
);

class AppRouter extends ConsumerWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ref.watch(lightAppThemeDataProvider),
      darkTheme: ref.watch(darkAppThemeDataProvider),
      routerConfig: _router,
    );
  }
}
