import 'package:flutter/material.dart';

/// Figmaから生成したM3テーマ
class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a4a),
      surfaceTint: Color(0xff904a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad8),
      onPrimaryContainer: Color(0xff3b080c),
      secondary: Color(0xff39693c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbaf0b7),
      onSecondaryContainer: Color(0xff002106),
      tertiary: Color(0xff904a46),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdad7),
      onTertiaryContainer: Color(0xff3b0909),
      error: Color(0xff904a43),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff3b0907),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      surfaceVariant: Color(0xffe0e2ec),
      onSurfaceVariant: Color(0xff44474e),
      outline: Color(0xff74777f),
      outlineVariant: Color(0xffc4c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inverseOnSurface: Color(0xfffeedee),
      inversePrimary: Color(0xffffb3b1),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff3b080c),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff733334),
      secondaryFixed: Color(0xffbaf0b7),
      onSecondaryFixed: Color(0xff002106),
      secondaryFixedDim: Color(0xff9ed49c),
      onSecondaryFixedVariant: Color(0xff205026),
      tertiaryFixed: Color(0xffffdad7),
      onTertiaryFixed: Color(0xff3b0909),
      tertiaryFixedDim: Color(0xffffb3ae),
      onTertiaryFixedVariant: Color(0xff733330),
      surfaceDim: Color(0xffe7d6d7),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6e2f30),
      surfaceTint: Color(0xff904a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaa5f5f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1c4c22),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4e8050),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6e2f2c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffaa5f5b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff6e302a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffaa6058),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      surfaceVariant: Color(0xffe0e2ec),
      onSurfaceVariant: Color(0xff40434a),
      outline: Color(0xff5c5f67),
      outlineVariant: Color(0xff787a83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inverseOnSurface: Color(0xfffeedee),
      inversePrimary: Color(0xffffb3b1),
      primaryFixed: Color(0xffaa5f5f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8d4748),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4e8050),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff366639),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffaa5f5b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8d4844),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d7),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff440f12),
      surfaceTint: Color(0xff904a4a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e2f30),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002909),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1c4c22),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff440f0f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6e2f2c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff44100c),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff6e302a),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe0e2ec),
      onSurfaceVariant: Color(0xff21242b),
      outline: Color(0xff40434a),
      outlineVariant: Color(0xff40434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe6e5),
      primaryFixed: Color(0xff6e2f30),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff521a1c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff1c4c22),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff01350e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6e2f2c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff521a18),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d7),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3b1),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff561d1f),
      primaryContainer: Color(0xff733334),
      onPrimaryContainer: Color(0xffffdad8),
      secondary: Color(0xff9ed49c),
      onSecondary: Color(0xff053911),
      secondaryContainer: Color(0xff205026),
      onSecondaryContainer: Color(0xffbaf0b7),
      tertiary: Color(0xffffb3ae),
      onTertiary: Color(0xff571e1b),
      tertiaryContainer: Color(0xff733330),
      onTertiaryContainer: Color(0xffffdad7),
      error: Color(0xffffb4ab),
      onError: Color(0xff561e19),
      errorContainer: Color(0xff73332d),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dedd),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfff0dedf),
      surfaceVariant: Color(0xff44474e),
      onSurfaceVariant: Color(0xffc4c6d0),
      outline: Color(0xff8e9099),
      outlineVariant: Color(0xff44474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inverseOnSurface: Color(0xff382e2f),
      inversePrimary: Color(0xff904a4a),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff3b080c),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff733334),
      secondaryFixed: Color(0xffbaf0b7),
      onSecondaryFixed: Color(0xff002106),
      secondaryFixedDim: Color(0xff9ed49c),
      onSecondaryFixedVariant: Color(0xff205026),
      tertiaryFixed: Color(0xffffdad7),
      onTertiaryFixed: Color(0xff3b0909),
      tertiaryFixedDim: Color(0xffffb3ae),
      onTertiaryFixedVariant: Color(0xff733330),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff261d1e),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb9b7),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff340407),
      primaryContainer: Color(0xffcb7a7a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa3d8a0),
      onSecondary: Color(0xff001b04),
      secondaryContainer: Color(0xff6a9d6a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb9b4),
      onTertiary: Color(0xff330405),
      tertiaryContainer: Color(0xffcb7b75),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff330404),
      errorContainer: Color(0xffcc7b72),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dedd),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfffff9f9),
      surfaceVariant: Color(0xff44474e),
      onSurfaceVariant: Color(0xffc8cad4),
      outline: Color(0xffa0a2ac),
      outlineVariant: Color(0xff80838c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inverseOnSurface: Color(0xff312829),
      inversePrimary: Color(0xff743435),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff2c0104),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff5e2324),
      secondaryFixed: Color(0xffbaf0b7),
      onSecondaryFixed: Color(0xff001603),
      secondaryFixedDim: Color(0xff9ed49c),
      onSecondaryFixedVariant: Color(0xff0d3f17),
      tertiaryFixed: Color(0xffffdad7),
      onTertiaryFixed: Color(0xff2c0102),
      tertiaryFixedDim: Color(0xffffb3ae),
      onTertiaryFixedVariant: Color(0xff5e2321),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff261d1e),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb9b7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff0ffeb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa3d8a0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb9b4),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dedd),
      surface: Color(0xff1a1112),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff44474e),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc8cad4),
      outlineVariant: Color(0xffc8cad4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4e1719),
      primaryFixed: Color(0xffffe0de),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb9b7),
      onPrimaryFixedVariant: Color(0xff340407),
      secondaryFixed: Color(0xffbef5bb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa3d8a0),
      onSecondaryFixedVariant: Color(0xff001b04),
      tertiaryFixed: Color(0xffffe0dd),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb9b4),
      onTertiaryFixedVariant: Color(0xff330405),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff261d1e),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      surfaceTint: surfaceTint,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
      primaryFixed: primaryFixed,
      onPrimaryFixed: onPrimaryFixed,
      primaryFixedDim: primaryFixedDim,
      onPrimaryFixedVariant: onPrimaryFixedVariant,
      secondaryFixed: secondaryFixed,
      onSecondaryFixed: onSecondaryFixed,
      secondaryFixedDim: secondaryFixedDim,
      onSecondaryFixedVariant: onSecondaryFixedVariant,
      tertiaryFixed: tertiaryFixed,
      onTertiaryFixed: onTertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim,
      onTertiaryFixedVariant: onTertiaryFixedVariant,
      surfaceDim: surfaceDim,
      surfaceBright: surfaceBright,
      surfaceContainerLowest: surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainer: surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerHighest: surfaceContainerHighest,
    );
  }
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
