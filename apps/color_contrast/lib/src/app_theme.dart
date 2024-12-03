import 'package:flutter/material.dart';

final ThemeData defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
);

final ThemeData middleContrastTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, contrastLevel: 0.5),
);

final ThemeData highContrastTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, contrastLevel: 1),
);
