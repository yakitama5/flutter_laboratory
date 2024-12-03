import 'package:flutter/material.dart';
import 'package:flutter_laboratory/color_contrast/src/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main(List<String> args) =>
    runApp(const ProviderScope(child: ColorContrastApp()));
