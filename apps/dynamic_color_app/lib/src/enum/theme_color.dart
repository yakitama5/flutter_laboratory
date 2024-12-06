import 'package:flutter/material.dart';

/// ユーザーが選択可能なテーマカラー
enum ThemeColor {
  appColor(null, 'アプリ内テーマ'),
  dynamicColor(null, 'デバイスのテーマカラー'),
  blue(Colors.blue, 'ブルー'),
  purple(Colors.purple, 'パープル'),
  pink(Colors.pink, 'ピンク'),
  red(Colors.red, 'レッド'),
  orange(Colors.orange, 'オレンジ'),
  yellow(Colors.yellow, 'イエロー'),
  green(Colors.green, 'グリーン');

  const ThemeColor(this.seedColor, this.description);

  static List<ThemeColor> get colorValues =>
      values.where((i) => i.seedColor != null).toList();
  static List<ThemeColor> get systemValues =>
      values.where((i) => i.seedColor == null).toList();

  final Color? seedColor;
  final String description;
}
