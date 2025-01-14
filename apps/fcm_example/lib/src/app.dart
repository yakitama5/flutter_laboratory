import 'package:fcm_example/src/fcm_config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FcmExampleApp extends StatelessWidget {
  const FcmExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _SamplePage(),
    );
  }
}

class _SamplePage extends HookConsumerWidget {
  const _SamplePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefsFuture = useFuture(SharedPreferences.getInstance());
    ref.watch(fcmConfigNotifierProvider.notifier).init();
    if (prefsFuture.data == null) {
      return const Scaffold(
        body: CircularProgressIndicator(),
      );
    }

    final prefs = prefsFuture.data!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('FcmExample'),
      ),
      body: Center(
        child: Text(
          'NotificationCount: ${prefs.getInt('notificationCount') ?? 0}',
        ),
      ),
    );
  }
}
