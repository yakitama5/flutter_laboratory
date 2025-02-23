// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DynamicColorVariantApp extends StatelessWidget {
  const DynamicColorVariantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _SamplePage(),
    );
  }
}

class _SamplePage extends HookWidget {
  const _SamplePage();

  @override
  Widget build(BuildContext context) {
    final dynamicSchemeVariant = useState(DynamicSchemeVariant.tonalSpot);

    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          dynamicSchemeVariant: dynamicSchemeVariant.value,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DynamicSchemeVariant'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ...DynamicSchemeVariant.values.map(
                  (v) => RadioListTile<DynamicSchemeVariant>(
                    value: v,
                    groupValue: dynamicSchemeVariant.value,
                    title: Text(v.name),
                    onChanged: (v) => dynamicSchemeVariant.value = v!,
                  ),
                ),
                const Divider(),
                Expanded(
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          FilledButton(
                            onPressed: () {},
                            child: const Text('Filled'),
                          ),
                          FilledButton.tonal(
                            onPressed: () {},
                            child: const Text('Filled.tonal'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Elevated'),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('Outlined'),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Switch(value: false, onChanged: (v) {}),
                          Switch(value: true, onChanged: (v) {}),
                        ],
                      ),
                      // const Divider(),
                      // Text(dynamicSchemeVariant.value.name),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
