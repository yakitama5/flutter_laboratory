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

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 240),
                child: Center(
                  child: AppLogo(animationState: animationState.value),
                ),
              ),
              Center(
                child: WelcomeMessage(
                  onShowedMessage: () {
                    if (animationState.value ==
                        OnboardAnimationState.showedWelcomeMessage) {
                      Future<void>.delayed(const Duration(milliseconds: 1000))
                          .then((_) {
                        animationState.value = animationState.value.next();
                      });
                    }
                  },
                  animationState: animationState.value,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 64),
                  child: SelectedButtonList(
                    onPressedYes: () => animationState.value =
                        OnboardAnimationState.selectedYes,
                    onPressedNo: () =>
                        animationState.value = OnboardAnimationState.selectedNo,
                    animationState: animationState.value,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            animationState.value = OnboardAnimationState.initial;

            Future<void>.delayed(const Duration(milliseconds: 1000)).then((_) {
              animationState.value = animationState.value.next();
            });
          },
          child: const Icon(Icons.replay),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, required this.animationState});

  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: switch (animationState) {
        OnboardAnimationState.initial => 0,
        _ => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: const Icon(
        Icons.arrow_drop_down_circle_rounded,
        size: 128,
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.onShowedMessage,
    required this.animationState,
  });

  final VoidCallback onShowedMessage;
  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      onEnd: onShowedMessage,
      opacity: switch (animationState) {
        OnboardAnimationState.initial => 0,
        _ => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: AutoSizeText(
        'アプリを利用しますか？',
        style: Theme.of(context).textTheme.displayMedium,
        maxLines: 1,
      ),
    );
  }
}

class SelectedButtonList extends StatelessWidget {
  const SelectedButtonList({
    super.key,
    required this.onPressedYes,
    required this.onPressedNo,
    required this.animationState,
  });

  final VoidCallback onPressedYes;
  final VoidCallback onPressedNo;
  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.easeInQuint,
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.showedWelcomeMessage =>
          0,
        _ => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            opacity: switch (animationState) {
              OnboardAnimationState.initial ||
              OnboardAnimationState.showedWelcomeMessage ||
              OnboardAnimationState.selectedNo =>
                0,
              _ => 1,
            },
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onPressedYes,
                child: const Text('はい'),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: switch (animationState) {
              OnboardAnimationState.initial ||
              OnboardAnimationState.showedWelcomeMessage ||
              OnboardAnimationState.selectedYes =>
                0,
              _ => 1,
            },
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onPressedYes,
                child: const Text('いいえ'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
