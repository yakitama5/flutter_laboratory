import 'package:dynamic_color_app/src/sample_page.dart';
import 'package:dynamic_color_app/src/state/app_color_scheme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DynamicColorApp extends ConsumerWidget {
  const DynamicColorApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightColorScheme =
        ref.watch(appColorSchemeProvider(brightness: Brightness.light));
    final darkColorScheme =
        ref.watch(appColorSchemeProvider(brightness: Brightness.dark));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SamplePage(),
      // Providerで管理した`ColorScheme`を基にアプリテーマを設定
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme:
          ThemeData(colorScheme: darkColorScheme, brightness: Brightness.dark),
    );
  }
}
