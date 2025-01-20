import 'package:dynamic_color/dynamic_color.dart';
import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:dynamic_color_app/src/state/dynamic_core_pallete_provider.dart';
import 'package:dynamic_color_app/src/state/theme_color_notifier_provider.dart';
import 'package:dynamic_color_app/src/state/variant_notifier_provider.dart';
import 'package:dynamic_color_app/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_color_scheme_provider.g.dart';

/// アプリ内のカラースキーマを管理
@riverpod
ColorScheme appColorScheme(Ref ref, {required Brightness brightness}) {
  final themeColor = ref.watch(themeColorNotifierProvider);
  final variant = ref.watch(variantNotifierProvider);
  final dynamicCorePalette = ref.watch(dynamicCorePaletteProvider).value;

  // テーマカラーに応じたカラースキーマを取得
  final colorScheme = _colorScheme(
    brightness,
    themeColor,
    dynamicCorePalette,
    variant,
  );

  // Dynamic Colorに対応している場合、エラー色を調和する
  final isDynamicColorSupported = dynamicCorePalette != null;
  return isDynamicColorSupported ? colorScheme.harmonized() : colorScheme;
}

/// テーマカラーに応じたカラースキーマ
ColorScheme _colorScheme(
  Brightness brightness,
  ThemeColor themeColor,
  CorePalette? dynamicCorePalette,
  Variant variant,
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
      // [暫定対応] Flutter3.22.0で行われた`ColorScheme`の破壊的変更への対応
      return dynamicCorePalette.toM3ColorScheme(
        brightness: brightness,
        variant: variant,
      );

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

extension CorePaletteOverrideX on CorePalette {
  /// Support for colors added in Flutter 3.22.0
  ColorScheme toM3ColorScheme({
    Brightness brightness = Brightness.light,
    required Variant variant,
  }) {
    final isDark = Brightness.dark == brightness;

    final scheme = DynamicScheme(
      // ignore: deprecated_member_use
      sourceColorArgb: toColorScheme(brightness: brightness).primary.value,
      variant: variant,
      isDark: isDark,
      primaryPalette: primary,
      secondaryPalette: secondary,
      tertiaryPalette: tertiary,
      neutralPalette: neutral,
      neutralVariantPalette: neutralVariant,
    );

    return ColorScheme(
      brightness: brightness,
      primary: Color(scheme.primary),
      surfaceTint: Color(scheme.surfaceTint),
      onPrimary: Color(scheme.onPrimary),
      primaryContainer: Color(scheme.primaryContainer),
      onPrimaryContainer: Color(scheme.onPrimaryContainer),
      secondary: Color(scheme.secondary),
      onSecondary: Color(scheme.onSecondary),
      secondaryContainer: Color(scheme.secondaryContainer),
      onSecondaryContainer: Color(scheme.onSecondaryContainer),
      tertiary: Color(scheme.tertiary),
      onTertiary: Color(scheme.onTertiary),
      tertiaryContainer: Color(scheme.tertiaryContainer),
      onTertiaryContainer: Color(scheme.onTertiaryContainer),
      error: Color(scheme.error),
      onError: Color(scheme.onError),
      errorContainer: Color(scheme.errorContainer),
      onErrorContainer: Color(scheme.onErrorContainer),
      surface: Color(scheme.surface),
      onSurface: Color(scheme.onSurface),
      onSurfaceVariant: Color(scheme.onSurfaceVariant),
      outline: Color(scheme.outline),
      outlineVariant: Color(scheme.outlineVariant),
      shadow: Color(scheme.shadow),
      scrim: Color(scheme.scrim),
      inverseSurface: Color(scheme.inverseSurface),
      inversePrimary: Color(scheme.inversePrimary),
      primaryFixed: Color(scheme.primaryFixed),
      onPrimaryFixed: Color(scheme.onPrimaryFixed),
      primaryFixedDim: Color(scheme.primaryFixedDim),
      onPrimaryFixedVariant: Color(scheme.onPrimaryFixedVariant),
      secondaryFixed: Color(scheme.secondaryFixed),
      onSecondaryFixed: Color(scheme.onSecondaryFixed),
      secondaryFixedDim: Color(scheme.secondaryFixedDim),
      onSecondaryFixedVariant: Color(scheme.onSecondaryFixedVariant),
      tertiaryFixed: Color(scheme.tertiaryFixed),
      onTertiaryFixed: Color(scheme.onTertiaryFixed),
      tertiaryFixedDim: Color(scheme.tertiaryFixedDim),
      onTertiaryFixedVariant: Color(scheme.onTertiaryFixedVariant),
      surfaceDim: Color(scheme.surfaceDim),
      surfaceBright: Color(scheme.surfaceBright),
      surfaceContainerLowest: Color(scheme.surfaceContainerLowest),
      surfaceContainerLow: Color(scheme.surfaceContainerLow),
      surfaceContainer: Color(scheme.surfaceContainer),
      surfaceContainerHigh: Color(scheme.surfaceContainerHigh),
      surfaceContainerHighest: Color(scheme.surfaceContainerHighest),
    );
  }
}
