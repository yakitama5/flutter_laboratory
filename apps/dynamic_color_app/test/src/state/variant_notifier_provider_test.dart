import 'package:dynamic_color_app/src/state/variant_notifier_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

void main() {
  group('VariantNotifier Tests', () {
    test('initial state should be Variant.content', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final variant = container.read(variantNotifierProvider);
      expect(variant, equals(Variant.content));
    });

    test('update should change variant state', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(variantNotifierProvider.notifier).update(
            variant: Variant.monochrome,
          );

      expect(
        container.read(variantNotifierProvider),
        equals(Variant.monochrome),
      );
    });

    test('should handle all variant types', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final notifier = container.read(variantNotifierProvider.notifier);

      for (final variant in Variant.values) {
        notifier.update(variant: variant);
        expect(container.read(variantNotifierProvider), equals(variant));
      }
    });
  });
}
