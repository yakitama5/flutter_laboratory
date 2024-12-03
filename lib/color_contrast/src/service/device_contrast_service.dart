import 'package:flutter/services.dart';

import '../enum/color_contrast.dart';

class DeviceContrastService {
  // HACK(yakitama5): Pigen使ってみたい
  static const MethodChannel _channel =
      MethodChannel('samples.flutter.dev/color_contrast');

  Future<AndroidColorContrast?> getAndroidContrast() async {
    final result = await _channel.invokeMethod('');

    final contrast = _tryParseDouble(result);
    if (contrast == null) {
      return null;
    }

    // HACK(yakitama5): マジックナンバーになってるので、Android側の定数値みたいなものがないか調査
    return switch (contrast) {
      >= 1 => AndroidColorContrast.high,
      >= 0.5 => AndroidColorContrast.middle,
      _ => AndroidColorContrast.low,
    };
  }

  double? _tryParseDouble(dynamic result) {
    if (result == null || result is! String) {
      return null;
    }

    return double.tryParse(result);
  }
}
