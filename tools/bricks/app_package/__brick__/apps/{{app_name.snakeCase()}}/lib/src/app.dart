import 'package:flutter/material.dart';

class {{app_name.pascalCase()}}App extends StatelessWidget {
  const {{app_name.pascalCase()}}App({super.key});

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
        title: const Text('{{app_name.pascalCase()}}'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
