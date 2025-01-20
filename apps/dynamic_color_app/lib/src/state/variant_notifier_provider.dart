import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'variant_notifier_provider.g.dart';

/// Variantを管理するProvider
/// 本来は`SharedPreferences`などで情報を永続化する
/// サンプルプログラムのためインメモリで保持
@riverpod
class VariantNotifier extends _$VariantNotifier {
  @override
  Variant build() => Variant.content;

  // ignore: use_setters_to_change_properties
  void update({required Variant variant}) {
    state = variant;
  }
}
