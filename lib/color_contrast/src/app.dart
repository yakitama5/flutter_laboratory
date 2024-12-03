import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_laboratory/color_contrast/src/state/app_theme_provider.dart';
import 'package:flutter_laboratory/common/utils/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ColorContrastApp extends HookConsumerWidget {
  const ColorContrastApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            TextButton(onPressed: _onPressed, child: const Text('Text')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onPressed() {
    callColorContrast();
  }

  Future<String> callColorContrast() async {
    // ネイティブの処理を呼び出す
    const channel = MethodChannel('samples.flutter.dev/color_contrast');
    final resultText = await channel.invokeMethod('getHello');
    logger.d('Result: $resultText');
    return '';
  }
}
