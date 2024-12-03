import 'package:color_contrast_app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main(List<String> args) =>
    runApp(const ProviderScope(child: ColorContrastApp()));
