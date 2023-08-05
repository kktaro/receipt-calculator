import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/app_theme.g.dart';

@riverpod
ThemeData lightAppThemeData(LightAppThemeDataRef ref) =>
    _createThemeDate(Brightness.light);

@riverpod
ThemeData darkAppThemeData(DarkAppThemeDataRef ref) =>
    _createThemeDate(Brightness.dark);

ThemeData _createThemeDate(Brightness brightness) => ThemeData(
      brightness: brightness,
      colorSchemeSeed: Colors.lime,
      fontFamily: 'Noto Sans JP',
      useMaterial3: true,
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          // 角丸
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
