import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Screen')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          final id = index + 1;
          return Hero(
            tag: 'item-$id',
            createRectTween: (begin, end) {
              return MaterialRectCenterArcTween(begin: begin, end: end);
            },
            child: Material(
              child: GridTile(
                child: InkWell(
                  onTap: () {
                    context.go('/details/$id');
                  },
                  child: Card(color: Colors.redAccent, child: Text('Item $id')),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
