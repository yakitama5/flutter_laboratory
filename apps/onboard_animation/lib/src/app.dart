// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:onboard_animation/src/onboard_animation_state.dart';

ColorScheme generateScheme(Brightness brightness) {
  final scheme = DynamicScheme(
    sourceColorArgb: Colors.white.value,
    variant: Variant.monochrome,
    isDark: brightness == Brightness.dark,
    primaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    secondaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    tertiaryPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    neutralPalette: TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
    neutralVariantPalette:
        TonalPalette.fromHct(Hct.fromInt(Colors.white.value)),
  );

  final colorScheme = ColorScheme(
    brightness: brightness,
    primary: Color(scheme.primary),
    surfaceTint: Color(scheme.surfaceTint),
    onPrimary: Color(scheme.onPrimary),
    primaryContainer: Color(scheme.primaryContainer),
    onPrimaryContainer: Color(scheme.onPrimaryContainer),
    secondary: Color(scheme.secondary),
    onSecondary: Color(scheme.onSecondary),
    secondaryContainer: Color(scheme.secondaryContainer),
    onSecondaryContainer: Color(scheme.onSecondaryContainer),
    tertiary: Color(scheme.tertiary),
    onTertiary: Color(scheme.onTertiary),
    tertiaryContainer: Color(scheme.tertiaryContainer),
    onTertiaryContainer: Color(scheme.onTertiaryContainer),
    error: Color(scheme.error),
    onError: Color(scheme.onError),
    errorContainer: Color(scheme.errorContainer),
    onErrorContainer: Color(scheme.onErrorContainer),
    surface: Color(scheme.surface),
    onSurface: Color(scheme.onSurface),
    onSurfaceVariant: Color(scheme.onSurfaceVariant),
    outline: Color(scheme.outline),
    outlineVariant: Color(scheme.outlineVariant),
    shadow: Color(scheme.shadow),
    scrim: Color(scheme.scrim),
    inverseSurface: Color(scheme.inverseSurface),
    inversePrimary: Color(scheme.inversePrimary),
    primaryFixed: Color(scheme.primaryFixed),
    onPrimaryFixed: Color(scheme.onPrimaryFixed),
    primaryFixedDim: Color(scheme.primaryFixedDim),
    onPrimaryFixedVariant: Color(scheme.onPrimaryFixedVariant),
    secondaryFixed: Color(scheme.secondaryFixed),
    onSecondaryFixed: Color(scheme.onSecondaryFixed),
    secondaryFixedDim: Color(scheme.secondaryFixedDim),
    onSecondaryFixedVariant: Color(scheme.onSecondaryFixedVariant),
    tertiaryFixed: Color(scheme.tertiaryFixed),
    onTertiaryFixed: Color(scheme.onTertiaryFixed),
    tertiaryFixedDim: Color(scheme.tertiaryFixedDim),
    onTertiaryFixedVariant: Color(scheme.onTertiaryFixedVariant),
    surfaceDim: Color(scheme.surfaceDim),
    surfaceBright: Color(scheme.surfaceBright),
    surfaceContainerLowest: Color(scheme.surfaceContainerLowest),
    surfaceContainerLow: Color(scheme.surfaceContainerLow),
    surfaceContainer: Color(scheme.surfaceContainer),
    surfaceContainerHigh: Color(scheme.surfaceContainerHigh),
    surfaceContainerHighest: Color(scheme.surfaceContainerHighest),
  );

  // final colorScheme = GrayColorScheme.highContrastGray(brightness);

  return colorScheme;
}

class OnboardAnimationApp extends StatelessWidget {
  const OnboardAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const _SamplePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        textTheme: GoogleFonts.shipporiMinchoTextTheme()
            .merge(ThemeData.light().textTheme),
        colorScheme: generateScheme(Brightness.light),
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.shipporiMinchoTextTheme()
            .merge(ThemeData.dark().textTheme),
        colorScheme: generateScheme(Brightness.dark),
      ),
    );
  }
}

class _SamplePage extends HookWidget {
  const _SamplePage();

  @override
  Widget build(BuildContext context) {
    final animationState = useState(OnboardAnimationState.initial);

    useEffect(
      () {
        Future<void>.delayed(const Duration(milliseconds: 5000)).then((_) {
          animationState.value = animationState.value.next();
        });
        return null;
      },
      [],
    );

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 240),
                child: Center(
                  child: AnimatedOpacity(
                    opacity: switch (animationState.value) {
                      OnboardAnimationState.initial => 0,
                      _ => 1,
                    },
                    duration: const Duration(milliseconds: 500),
                    child: const Icon(
                      Icons.arrow_drop_down_circle_rounded,
                      size: 128,
                    ),
                  ),
                ),
              ),
              Center(
                child: AnimatedOpacity(
                  onEnd: () {
                    if (animationState.value ==
                        OnboardAnimationState.showWelcomeMessage) {
                      Future<void>.delayed(const Duration(milliseconds: 1000))
                          .then((_) {
                        animationState.value = animationState.value.next();
                      });
                    }
                  },
                  opacity: switch (animationState.value) {
                    OnboardAnimationState.initial => 0,
                    _ => 1,
                  },
                  duration: const Duration(milliseconds: 500),
                  child: AutoSizeText(
                    'アプリを利用しますか？',
                    style: Theme.of(context).textTheme.displayMedium,
                    maxLines: 1,
                  ),
                ),
              ),
              AnimatedOpacity(
                onEnd: () {
                  // TODO(yakitama5): a
                },
                curve: Curves.easeInQuint,
                opacity: switch (animationState.value) {
                  OnboardAnimationState.completed => 1,
                  _ => 0,
                },
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text('はい'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.tonal(
                          onPressed: () {},
                          child: const Text('いいえ'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
