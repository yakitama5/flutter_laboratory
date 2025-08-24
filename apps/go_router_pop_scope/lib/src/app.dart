import 'package:flutter/material.dart';

class GoRouterPopScopeApp extends StatelessWidget {
  const GoRouterPopScopeApp({super.key});

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
        title: const Text('GoRouterPopScope'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
