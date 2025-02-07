import 'package:color_contrast_app/src/enum/color_contrast.dart';
import 'package:color_contrast_app/src/service/device_contrast_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_contrast_provider.g.dart';

@riverpod
Future<ColorContrast?> colorContrast(Ref ref) async {
  return DeviceContrastService().getColorContrast();
}
