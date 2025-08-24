// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $baseShellSroute,
    ];

RouteBase get $baseShellSroute => ShellRouteData.$route(
      navigatorKey: BaseShellSroute.$navigatorKey,
      factory: $BaseShellSrouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: _$RootRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/first',
          factory: _$FirstRouteData._fromState,
          routes: [
            GoRouteData.$route(
              path: 'second',
              factory: _$SecondRouteData._fromState,
            ),
          ],
        ),
      ],
    );

extension $BaseShellSrouteExtension on BaseShellSroute {
  static BaseShellSroute _fromState(GoRouterState state) => BaseShellSroute();
}

mixin _$RootRoute on GoRouteData {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$FirstRouteData on GoRouteData {
  static FirstRouteData _fromState(GoRouterState state) =>
      const FirstRouteData();

  @override
  String get location => GoRouteData.$location(
        '/first',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SecondRouteData on GoRouteData {
  static SecondRouteData _fromState(GoRouterState state) =>
      const SecondRouteData();

  @override
  String get location => GoRouteData.$location(
        '/first/second',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
