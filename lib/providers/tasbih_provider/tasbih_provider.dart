
import 'package:flutter/material.dart';

class TasbihProvider extends ChangeNotifier{
  static int   counter=0;
  static int index=0;
  static double angle=0;
  List<String>Azkar=
  ['سبحان الله','الحمد لله','الله اكبر','لا اله الا الله'];

  tasbehFunction() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter = 1;
    }
    if (index == Azkar.length) {
      index = 0;
    }

    angle += 360 / 4;
    notifyListeners();

  }

}