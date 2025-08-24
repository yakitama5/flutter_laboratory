import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_pop_scope/src/first_page.dart';
import 'package:go_router_pop_scope/src/routes/root_navigator_key.dart';
import 'package:go_router_pop_scope/src/second_page.dart';

part 'routes.g.dart';

@TypedShellRoute<BaseShellSroute>(
  routes: [
    TypedGoRoute<RootRoute>(path: RootRoute.path),
    TypedGoRoute<FirstRouteData>(
      path: FirstRouteData.path,
      routes: [
        TypedGoRoute<SecondRouteData>(path: SecondRouteData.path),
      ],
    ),
  ],
)
class BaseShellSroute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}

class RootRoute extends GoRouteData with _$RootRoute {
  const RootRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // ぐるぐる回すだけ
      const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()));
}

class FirstRouteData extends GoRouteData with _$FirstRouteData {
  const FirstRouteData();

  static const path = '/first';

  @override
  Widget build(BuildContext context, GoRouterState state) => const FirstPage();
}

class SecondRouteData extends GoRouteData with _$SecondRouteData {
  const SecondRouteData();

  static const path = 'second';

  @override
  Widget build(BuildContext context, GoRouterState state) => const SecondPage();
}
