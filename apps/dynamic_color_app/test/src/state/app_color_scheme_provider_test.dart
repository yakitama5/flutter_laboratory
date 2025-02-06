import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:dynamic_color_app/src/state/app_color_scheme_provider.dart';
import 'package:dynamic_color_app/src/state/theme_color_notifier_provider.dart';
import 'package:dynamic_color_app/src/state/variant_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

void main() {
  group('appColorScheme Provider Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('returns correct color scheme for light brightness', () {
      final colorScheme = container.read(
        appColorSchemeProvider(brightness: Brightness.light),
      );
      expect(colorScheme.brightness, equals(Brightness.light));
    });

    test('returns correct color scheme for dark brightness', () {
      final colorScheme = container.read(
        appColorSchemeProvider(brightness: Brightness.dark),
      );
      expect(colorScheme.brightness, equals(Brightness.dark));
    });

    test('handles dynamic color when not supported', () {
      container.read(themeColorNotifierProvider.notifier).state =
          ThemeColor.dynamicColor;

      final colorScheme = container.read(
        appColorSchemeProvider(brightness: Brightness.light),
      );
      expect(colorScheme, isNotNull);
    });

    test('generates correct scheme for specific theme colors', () {
      container.read(themeColorNotifierProvider.notifier).state =
          ThemeColor.blue;

      final colorScheme = container.read(
        appColorSchemeProvider(brightness: Brightness.light),
      );
      expect(
        colorScheme.primary,
        equals(
          ColorScheme.fromSeed(
            seedColor: ThemeColor.blue.seedColor!,
          ).primary,
        ),
      );
    });

    test('CorePalette extension generates valid M3 ColorScheme', () {
      final corePalette = CorePalette.of(0xFF0000FF);
      final variant = container.read(variantNotifierProvider);

      final colorScheme = corePalette.toM3ColorScheme(
        variant: variant,
      );

      expect(colorScheme, isA<ColorScheme>());
      expect(colorScheme.brightness, equals(Brightness.light));
      expect(colorScheme.primary, isNotNull);
      expect(colorScheme.surfaceContainer, isNotNull);
    });

    test('handles app color theme correctly', () {
      container.read(themeColorNotifierProvider.notifier).state =
          ThemeColor.appColor;

      final colorScheme = container.read(
        appColorSchemeProvider(brightness: Brightness.light),
      );
      expect(colorScheme, isNotNull);
      expect(colorScheme, isA<ColorScheme>());
    });
  });
}
