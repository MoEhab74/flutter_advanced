import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_advanced/core/theme/themes/manager/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  ThemeMode _currentThemeMode = ThemeMode.light;

  ThemeMode get currentThemeMode => _currentThemeMode;

  void changeTheme(ThemeMode themeMode) {
    emit(ThemeChangeLoading());
    try {
      _currentThemeMode = themeMode;
      emit(ThemeLoaded(_currentThemeMode));
    } catch (e) {
      emit(ThemeChangeFailed(e.toString()));
    }
  }

  void toggleTheme() {
    final nextMode =
        _currentThemeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    changeTheme(nextMode);
  }
}
