// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_color_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeColorNotifierHash() =>
    r'8d9aa7f51a8d458a93bfcace1e44f1e4767c4bbd';

/// アプリ内テーマカラー
/// 本来は`SharedPreferences`などで情報を永続化する
/// サンプルプログラムのためインメモリで保持
///
/// Copied from [ThemeColorNotifier].
@ProviderFor(ThemeColorNotifier)
final themeColorNotifierProvider =
    AutoDisposeNotifierProvider<ThemeColorNotifier, ThemeColor>.internal(
  ThemeColorNotifier.new,
  name: r'themeColorNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeColorNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeColorNotifier = AutoDisposeNotifier<ThemeColor>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
