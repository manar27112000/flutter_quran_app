import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class QuranProvider extends ChangeNotifier {
  List<String>verses=[];


  void loadFile(index) async{
    String fileContent =await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>suraLines=  fileContent.split('\n');
    verses=suraLines;
    notifyListeners();

  }

}