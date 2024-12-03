import 'package:color_contrast_app/src/enum/color_contrast.dart';
import 'package:color_contrast_app/src/state/color_contrast_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../app_theme.dart';

part 'app_theme_provider.g.dart';

/// 「色のコントラスト」の設定値を基にアプリのテーマを管理
@riverpod
ThemeData appTheme(Ref ref) {
  // 「色のコントラスト」の内容を取得
  final colorContrast = ref.watch(colorContrastProvider).value;
  if (colorContrast == null) {
    return defaultTheme;
  }

  // 内容に応じてテーマを設定
  return switch (colorContrast) {
    ColorContrast.low => defaultTheme,
    ColorContrast.middle => middleContrastTheme,
    ColorContrast.high => highContrastTheme,
  };
}
