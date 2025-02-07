// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_animation/src/onboard_animation_state.dart';

import 'monochrome_schemes.dart';

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
        colorScheme: lightScheme,
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.shipporiMinchoTextTheme()
            .merge(ThemeData.dark().textTheme),
        colorScheme: darkScheme,
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
                        OnboardAnimationState.showedWelcomeMessage) {
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
                curve: Curves.easeInQuint,
                opacity: switch (animationState.value) {
                  OnboardAnimationState.showedChoices => 1,
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
