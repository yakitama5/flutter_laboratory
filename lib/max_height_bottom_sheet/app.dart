import 'package:flutter/material.dart';
import 'package:flutter_laboratory/max_height_bottom_sheet/bottom_sheet.dart';

class MaxHeightBottomSheetApp extends StatelessWidget {
  const MaxHeightBottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ShowButton(itemCount: 1),
            _ShowButton(itemCount: 5),
            _ShowButton(itemCount: 10),
            _ShowButton(itemCount: 15),
            _ShowButton(itemCount: 20),
          ],
        ),
      ),
    );
  }
}

class _ShowButton extends StatelessWidget {
  const _ShowButton({required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height / 10 * 8;

    return FilledButton(
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (context) => ConstrainedBox(
            constraints: BoxConstraints(maxHeight: height),
            child: SampleBottomSheet(itemCount: itemCount),
          ),
        );
      },
      child: Text('Show $itemCount'),
    );
  }
}
