import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_animation/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // フォントの読み込みを待機
  await GoogleFonts.pendingFonts(
    [GoogleFonts.shipporiMinchoTextTheme()],
  );

  // ignore: missing_provider_scope
  runApp(const OnboardAnimationApp());
}
