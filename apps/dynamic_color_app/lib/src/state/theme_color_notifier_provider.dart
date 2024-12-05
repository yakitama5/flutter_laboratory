import 'package:dynamic_color_app/src/enum/theme_color.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_color_notifier_provider.g.dart';

/// アプリ内テーマカラー
/// 本来は`SharedPreferences`などで情報を永続化する
/// サンプルプログラムのためインメモリで保持
@riverpod
class ThemeColorNotifier extends _$ThemeColorNotifier {
  @override
  ThemeColor build() => ThemeColor.system;

  // ignore: use_setters_to_change_properties
  void update({required ThemeColor themeColor}) {
    state = themeColor;
  }
}
