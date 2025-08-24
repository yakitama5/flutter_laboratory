import 'package:flutter/material.dart';
import 'package:go_router_pop_scope/src/routes/router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoRouterPopScopeApp extends HookConsumerWidget {
  const GoRouterPopScopeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
    );
  }
}
