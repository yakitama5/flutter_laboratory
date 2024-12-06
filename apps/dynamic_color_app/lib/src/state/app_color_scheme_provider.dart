import 'package:dynamic_color/dynamic_color.dart';
import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:dynamic_color_app/src/state/dynamic_core_pallete_provider.dart';
import 'package:dynamic_color_app/src/state/theme_color_notifier_provider.dart';
import 'package:dynamic_color_app/src/theme.dart';
import 'package:dynamic_color_app/src/utils/dynamic_color_utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_color_scheme_provider.g.dart';

/// アプリ内のカラースキーマを管理
@riverpod
ColorScheme appColorScheme(Ref ref, {required Brightness brightness}) {
  final themeColor = ref.watch(themeColorNotifierProvider);
  final dynamicCorePalette = ref.watch(dynamicCorePaletteProvider).value;

  // テーマカラーに応じたカラースキーマを取得
  final colorScheme = _colorScheme(brightness, themeColor, dynamicCorePalette);

  // Dynamic Colorに対応している場合、エラー色を調和する
  final isDynamicColorSupported = dynamicCorePalette != null;
  return isDynamicColorSupported ? colorScheme.harmonized() : colorScheme;
}

/// テーマカラーに応じたカラースキーマ
ColorScheme _colorScheme(
  Brightness brightness,
  ThemeColor themeColor,
  CorePalette? dynamicCorePalette,
) {
  switch (themeColor) {
    case ThemeColor.appColor:
      return _defaultColorScheme(brightness);
    case ThemeColor.dynamicColor:
      // DynamicColorに対応していない場合は、アプリのテーマカラーを設定
      if (dynamicCorePalette == null) {
        return _defaultColorScheme(brightness);
      }

      // デバイスのテーマカラーを基にカラースキーマを生成
      final dynamicColorScheme =
          dynamicCorePalette.toColorScheme(brightness: brightness);

      // [暫定対応] Flutter3.22.0で行われた`ColorScheme`の破壊的変更への対応
      return generateDynamicColourSchemes(dynamicColorScheme);

    case ThemeColor.blue:
    case ThemeColor.purple:
    case ThemeColor.pink:
    case ThemeColor.red:
    case ThemeColor.orange:
    case ThemeColor.yellow:
    case ThemeColor.green:
      // テーマカラーが選択された場合は、対応する色を基に生成
      return ColorScheme.fromSeed(
        seedColor: themeColor.seedColor!,
        brightness: brightness,
      );
  }
}

ColorScheme _defaultColorScheme(Brightness brightness) {
  return switch (brightness) {
    Brightness.light => MaterialTheme.lightScheme().toColorScheme(),
    Brightness.dark => MaterialTheme.darkScheme().toColorScheme(),
  };
}
