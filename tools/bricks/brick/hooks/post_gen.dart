import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final brickName = context.vars['name'];
  const bricksDir = './tools/bricks/';

  // create bricks
  Process.runSync('mason', [
    'new',
    brickName,
    '-o',
    bricksDir,
    context.vars['hooks'] ? '--hooks' : '',
    '--desc',
    context.vars['description'],
    runInShell: true,
  ]);

  // add bricks
  Process.runSync('mason', [
    'add',
    brickName,
    '--path',
    bricksDir + brickName,
    runInShell: true,
  ]);

  // remove LICENSE
  Process.runSync('rm', [
    '$bricksDir$brickName/LICENSE',
    runInShell: true,
  ]);
}
