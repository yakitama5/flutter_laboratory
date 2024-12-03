import 'package:color_contrast_app/src/state/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ColorContrastApp extends HookConsumerWidget {
  const ColorContrastApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Providerで管理しているテーマをアプリに設定
    final theme = ref.watch(appThemeProvider);

    return MaterialApp(
      home: const ColorContrastPage(),
      theme: theme,
    );
  }
}

class ColorContrastPage extends HookWidget {
  const ColorContrastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('色のコントラスト'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: _onPressed,
              child: const Text('Filled'),
            ),
            FilledButton.tonal(
              onPressed: _onPressed,
              child: const Text('Filled Tonal'),
            ),
            OutlinedButton(
              onPressed: _onPressed,
              child: const Text('Outlined'),
            ),
            const Card.filled(
              child: SizedBox(
                width: 240,
                height: 140,
                child: Center(child: Text('Filled Card')),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onPressed() {
    // do nothing
  }
}
