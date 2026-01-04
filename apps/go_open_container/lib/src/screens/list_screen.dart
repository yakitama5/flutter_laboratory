import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Screen')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          final id = index + 1;
          return ListTile(
            title: Text('Item $id'),
            subtitle: Text('Subtitle for item $id'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              context.go('/details/$id');
            },
          );
        },
      ),
    );
  }
}
