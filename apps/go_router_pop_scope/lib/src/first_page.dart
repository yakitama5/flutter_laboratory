import 'package:flutter/material.dart';
import 'package:go_router_pop_scope/src/routes/routes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () => const SecondRouteData().go(context),
          child: const Text('Go To SecondPage'),
        ),
      ),
    );
  }
}
