import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:dynamic_color_app/src/state/theme_color_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeColor = ref.watch(themeColorNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('DynamicColorApp'),
      ),
      body: Column(
        children: [
          const _SampleComponents(),
          const Divider(),
          _Selector(
            onChanged: (value) {
              if (value == null) {
                return;
              }
              ref
                  .read(themeColorNotifierProvider.notifier)
                  .update(themeColor: value);
            },
            selectedValue: themeColor,
          ),
        ],
      ),
    );
  }
}

class _SampleComponents extends StatelessWidget {
  const _SampleComponents();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(onPressed: _onPressed, child: const Text('Filled')),
        FilledButton.tonal(onPressed: _onPressed, child: const Text('Tonal')),
        IconButton(onPressed: _onPressed, icon: const Icon(Icons.add)),
        const Card.filled(
          child: SizedBox(
            width: 240,
            height: 160,
            child: Center(
              child: Text('Filled Card'),
            ),
          ),
        ),
      ],
    );
  }

  void _onPressed() {
    // do nothing
  }
}

class _Selector extends StatelessWidget {
  const _Selector({required this.onChanged, required this.selectedValue});

  final ValueChanged<ThemeColor?> onChanged;
  final ThemeColor selectedValue;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: ThemeColor.values
          .map(
            (tc) => Radio<ThemeColor>(
              value: tc,
              groupValue: selectedValue,
              activeColor: tc.seedColor,
              hoverColor: tc.seedColor,
              onChanged: onChanged,
            ),
          )
          .toList(),
    );
  }
}
