import 'package:flutter/material.dart';

class GoOpenContainerApp extends StatelessWidget {
  const GoOpenContainerApp({super.key});

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
        title: const Text('GoOpenContainer'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
