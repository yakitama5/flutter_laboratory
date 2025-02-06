import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThemeColor', () {
    test('should have correct number of enum values', () {
      expect(ThemeColor.values.length, equals(9));
    });

    test('colorValues should only return colors with non-null seedColor', () {
      final colorValues = ThemeColor.colorValues;
      expect(colorValues.length, equals(7));
      expect(colorValues.contains(ThemeColor.appColor), isFalse);
      expect(colorValues.contains(ThemeColor.dynamicColor), isFalse);
      expect(colorValues.every((color) => color.seedColor != null), isTrue);
    });

    test('systemValues should only return entries with null seedColor', () {
      final systemValues = ThemeColor.systemValues;
      expect(systemValues.length, equals(2));
      expect(systemValues.contains(ThemeColor.appColor), isTrue);
      expect(systemValues.contains(ThemeColor.dynamicColor), isTrue);
      expect(systemValues.every((color) => color.seedColor == null), isTrue);
    });

    test('each color should have correct seedColor and description', () {
      expect(ThemeColor.blue.seedColor, equals(Colors.blue));
      expect(ThemeColor.blue.description, equals('ブルー'));

      expect(ThemeColor.purple.seedColor, equals(Colors.purple));
      expect(ThemeColor.purple.description, equals('パープル'));

      expect(ThemeColor.appColor.seedColor, isNull);
      expect(ThemeColor.appColor.description, equals('アプリ内テーマ'));

      expect(ThemeColor.dynamicColor.seedColor, isNull);
      expect(ThemeColor.dynamicColor.description, equals('デバイスのテーマカラー'));
    });
  });
}
