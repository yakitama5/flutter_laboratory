import 'package:flutter/material.dart';

class ThemedAppIconApp extends StatelessWidget {
  const ThemedAppIconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _SamplePage(),
    );
  }
}

class _SamplePage extends StatelessWidget {
  const _SamplePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemedAppIcon'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
