// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_color_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeColorNotifierHash() =>
    r'c6beda51a300a6cde5a94c157c2350e01475096e';

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
