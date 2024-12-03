import 'package:flutter/material.dart';
import 'package:flutter_laboratory/color_contrast/src/enum/color_contrast.dart';
import 'package:flutter_laboratory/color_contrast/src/state/color_contrast_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../theme.dart';

part 'app_theme_provider.g.dart';

@riverpod
ThemeData appTheme(Ref ref) {
  final colorContrast = ref.watch(colorContrastProvider).value;

  if (colorContrast == null) {
    return defaultTheme;
  }

  return switch (colorContrast) {
    AndroidColorContrast.low => defaultTheme,
    AndroidColorContrast.middle => middleContrastTheme,
    AndroidColorContrast.high => highContrastTheme,
  };
}
