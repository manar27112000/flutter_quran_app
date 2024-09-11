import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeMode currentTheme =ThemeMode.light;
  String currentLang='en';

void changeThemeMode(ThemeMode newTheme){
  if(currentTheme==newTheme)return;
  currentTheme=newTheme;
  notifyListeners();
}

void changeAppLanguage(String nemLang){
if (nemLang==currentLang)return;
  currentLang=nemLang;
notifyListeners();

}
}