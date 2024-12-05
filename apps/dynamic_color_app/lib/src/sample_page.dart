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
    final cs = Theme.of(context).colorScheme;

    return Column(
      children: [
        FilledButton(onPressed: _onPressed, child: const Text('Filled')),
        FilledButton.tonal(onPressed: _onPressed, child: const Text('Tonal')),
        const Card.filled(
          child: SizedBox(
            width: 240,
            height: 80,
            child: Center(
              child: Text('Filled Card'),
            ),
          ),
        ),
        Card(
          color: cs.error,
          child: SizedBox(
            width: 240,
            height: 80,
            child: Center(
              child: Text(
                'Error',
                style: TextStyle(color: cs.onError),
              ),
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
    final radioTiles = ThemeColor.systemValues.map(
      (tc) => RadioListTile(
        value: tc,
        groupValue: selectedValue,
        title: Text(tc.name),
        onChanged: onChanged,
      ),
    );
    final colorRadios = ThemeColor.colorValues.map(
      (tc) => Radio(
        value: tc,
        groupValue: selectedValue,
        fillColor: WidgetStateProperty.all(tc.seedColor),
        onChanged: onChanged,
      ),
    );

    return Column(
      children: [
        ...radioTiles,
        const Divider(),
        Text(
          'Colors',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: colorRadios.toList(),
        ),
      ],
    );
  }
}
