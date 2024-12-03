import 'package:flutter/material.dart';

class SampleBottomSheet extends StatelessWidget {
  const SampleBottomSheet({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(8),
      // 高さを変更するためだけの`ListView`利用のため、`shrinkWrap`を許容
      // ignore: shrink_wrapped_scroll_view
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (context, index) => ListTile(
          title: Text('Title $index'),
        ),
      ),
    );
  }
}
