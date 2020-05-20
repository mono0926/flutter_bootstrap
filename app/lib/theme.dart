import 'package:flutter/material.dart';
import 'package:mono_kit/mono_kit.dart';

ThemeData buildLightTheme() {
  return ThemeData.from(
    colorScheme: const ColorScheme.light(
      // TODO(mono): 変える
      primary: Colors.blue,
      secondary: Colors.lightBlueAccent,
    ),
  ).followLatestSpec();
}

ThemeData buildDarkTheme() {
  return ThemeData.from(
    colorScheme: const ColorScheme.dark(
      // TODO(mono): 変える
      secondary: Colors.lightBlueAccent,
    ),
  ).followLatestSpec();
}
