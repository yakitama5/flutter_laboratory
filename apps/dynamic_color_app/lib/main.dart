import 'package:dynamic_color_app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: DynamicColorApp(),
    ),
  );
}
