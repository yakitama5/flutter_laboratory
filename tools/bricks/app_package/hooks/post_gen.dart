import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  Process.runSync(
    'melos',
    ['bs'],
    runInShell: true,
  );
  Process.runSync(
    'melos',
    ['run', 'format_and_fix'],
    runInShell: true,
  );
}
