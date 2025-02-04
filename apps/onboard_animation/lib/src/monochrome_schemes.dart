// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';
import 'package:material_color_utilities/dynamiccolor/variant.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

ColorScheme get lightScheme => _monochromeScheme(Brightness.light);
ColorScheme get darkScheme => _monochromeScheme(Brightness.dark);

ColorScheme _monochromeScheme(Brightness brightness) {
  final scheme = DynamicScheme(
    sourceColorArgb: Colors.white.value,
    variant: Variant.monochrome,
    isDark: brightness == Brightness.dark,
    primaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    secondaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    tertiaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    neutralPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    neutralVariantPalette:
        TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
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
