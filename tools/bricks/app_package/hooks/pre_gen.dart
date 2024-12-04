import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final appName = context.vars['app_name'] as String;

  final isExists = Directory('apps/$appName').existsSync();

  // すでに存在する場合は処理終了
  if (isExists) {
    context.logger.info('Exists');
    exit(ExitCode.cantCreate.code);
  }
}
