import 'package:go_router/go_router.dart';
import 'package:go_router_pop_scope/src/routes/initial_location_provider.dart';
import 'package:go_router_pop_scope/src/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    routes: $appRoutes,
    initialLocation: initialLocation,
  );
}
