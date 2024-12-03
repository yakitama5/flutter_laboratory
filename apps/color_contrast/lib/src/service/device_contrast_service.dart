import 'package:flutter/services.dart';

import '../enum/color_contrast.dart';

class DeviceContrastService {
  static const MethodChannel _channel =
      MethodChannel('samples.flutter.dev/color_contrast');

  /// デバイスの「色のコントラスト」設定値を取得
  /// 現状ではAndroid14以降のみ？
  Future<ColorContrast?> getColorContrast() async {
    final result = await _channel.invokeMethod('');

    // TODO(yakitama5): PlatformやAndroidバージョンに応じて取得有無を判断する
    final contrast = _tryParseDouble(result);
    if (contrast == null) {
      return null;
    }

    // HACK(yakitama5): Android側の定数値みたいなものがないか調査
    return switch (contrast) {
      >= 1 => ColorContrast.high,
      >= 0.5 => ColorContrast.middle,
      _ => ColorContrast.low,
    };
  }

  double? _tryParseDouble(dynamic result) {
    if (result == null || result is! String) {
      return null;
    }

    return double.tryParse(result);
  }
}
