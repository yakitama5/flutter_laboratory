import 'package:flutter/material.dart';
import 'package:go_router_pop_scope/src/app.dart';
import 'package:go_router_pop_scope/src/routes/initial_location_provider.dart';
import 'package:go_router_pop_scope/src/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(
      ProviderScope(
        overrides: [
          initialLocationProvider.overrideWithValue(FirstRouteData.path),
        ],
        child: const GoRouterPopScopeApp(),
      ),
    );
