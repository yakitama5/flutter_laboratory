// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'variant_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$variantNotifierHash() => r'ca4fabdeb3cba4e44a7835fb3b98220fbf9320d0';

/// Variantを管理するProvider
/// 本来は`SharedPreferences`などで情報を永続化する
/// サンプルプログラムのためインメモリで保持
///
/// Copied from [VariantNotifier].
@ProviderFor(VariantNotifier)
final variantNotifierProvider =
    AutoDisposeNotifierProvider<VariantNotifier, Variant>.internal(
  VariantNotifier.new,
  name: r'variantNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$variantNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$VariantNotifier = AutoDisposeNotifier<Variant>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
