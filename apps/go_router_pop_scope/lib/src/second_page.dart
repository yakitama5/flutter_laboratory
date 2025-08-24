import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }

        final dialogResult = await showOkCancelAlertDialog(
          context: context,
          // TODO(yakitama5): ROOTを利用してはいけない理由を調査
          useRootNavigator: false,
        );

        if (dialogResult == OkCancelResult.ok && context.mounted) {
          context.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SecondPage'),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Back'),
          ),
        ),
      ),
    );
  }
}
