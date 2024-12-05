import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dynamic_core_pallete_provider.g.dart';

/// DynamicColorのCorePaletteを管理
@Riverpod(keepAlive: true)
Future<CorePalette?> dynamicCorePalette(Ref ref) async {
  // 未対応のWebでは取得処理を呼び出さない
  if (kIsWeb) {
    return null;
  }

  return DynamicColorPlugin.getCorePalette();
}
