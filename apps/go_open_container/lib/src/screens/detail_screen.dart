import 'package:flutter/material.dart';

final class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'item-$id',
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(title: Text('Detail $id')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Detail for Item $id',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text('Here is some detailed information about the item.'),
            ],
          ),
        ),
      ),
    );
  }
}
