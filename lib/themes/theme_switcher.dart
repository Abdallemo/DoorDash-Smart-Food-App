import 'package:dashdoor/themes/light_mode.dart';
import 'package:dashdoor/themes/dark_mode.dart';
import 'package:flutter/material.dart';

class ThemeSwitcher with ChangeNotifier
{
  ThemeData _themeData =  lightMode;
  ThemeData get themeData => _themeData;
  
  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData)
  {
    _themeData = this.themeData;
    notifyListeners();
  }

  void toggle()
  {
    if(_themeData==lightMode)
    {
      _themeData = darkMode;
    }else
    {
      _themeData = lightMode;
    }
  }
}