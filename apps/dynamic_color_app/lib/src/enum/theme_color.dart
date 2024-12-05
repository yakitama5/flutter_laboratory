import 'package:flutter/material.dart';

/// ユーザーが選択可能なテーマカラー
enum ThemeColor {
  system(null),
  dynamicColor(null),
  blue(Colors.blue),
  purple(Colors.purple),
  pink(Colors.pink),
  red(Colors.red),
  orange(Colors.orange),
  yellow(Colors.yellow),
  green(Colors.green);

  const ThemeColor(this.seedColor);

  final Color? seedColor;
}
