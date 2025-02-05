import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
  (ref) {
    final settingsBox = Hive.box('settings');
    return ThemeNotifier(settingsBox);
  },
);

class ThemeNotifier extends StateNotifier<ThemeMode> {
  static const _themeKey = 'themeMode';
  final Box settingsBox;
  static const _lastThemeKey = 'lastThemeMode';

  ThemeNotifier(this.settingsBox)
      : super(
          _loadThemeModeFromHive(settingsBox),
        );

  static ThemeMode _loadThemeModeFromHive(Box box) {
    final themeIndex = box.get(_themeKey, defaultValue: ThemeMode.light.index);
    return ThemeMode.values[themeIndex];
  }

  void toggleThemeMode() {
    if (state == ThemeMode.light) {
      _setThemeMode(ThemeMode.dark); // Switch to dark mode
    } else if (state == ThemeMode.dark) {
      _setThemeMode(ThemeMode.light); // Switch to light mode
    } else {
      _setThemeMode(_loadLastThemeMode()); // Revert to last non-system theme
    }
  }

  void useSystemSetting() {
    if (state != ThemeMode.system) {
      settingsBox.put(_lastThemeKey, state.index);
      _setThemeMode(ThemeMode.system);
    } else {
      _setThemeMode(_loadLastThemeMode());
    }
  }

  ThemeMode _loadLastThemeMode() {
    final lastThemeIndex =
        settingsBox.get(_lastThemeKey, defaultValue: ThemeMode.light.index);
    return ThemeMode.values[lastThemeIndex];
  }

  void _setThemeMode(ThemeMode mode) {
    settingsBox.put(_themeKey, mode.index); // Save theme to Hive
    state = mode; // Update the state
  }
}
