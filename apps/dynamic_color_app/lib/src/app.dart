import 'package:dynamic_color_app/src/state/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DynamicColorApp extends HookConsumerWidget {
  const DynamicColorApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightColorScheme =
        ref.watch(appColorSchemeProvider(brightness: Brightness.light));
    final darkColorScheme =
        ref.watch(appColorSchemeProvider(brightness: Brightness.dark));

    return MaterialApp(
      home: const _SamplePage(),
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme:
          ThemeData(colorScheme: darkColorScheme, brightness: Brightness.dark),
    );
  }
}

class _SamplePage extends StatelessWidget {
  const _SamplePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DynamicColorApp'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
