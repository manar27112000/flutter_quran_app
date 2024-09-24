
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/tabs/ahadith_tab/hadith_tab.dart';

class HadithProvider extends ChangeNotifier{

  List<HadithItem>hadithList=[];

  List<String> hadithNames=[];

  List<String> hadithContent=[];

  void loadHadethFile() async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>allAhadith=  fileContent.trim().split('#');

    for(int i=0;i<allAhadith.length;i++){
      List<String>hadithLines=allAhadith[i].trim().split('\n');
      String hadithTitle =hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent= hadithLines.join('\n');
      HadithItem hadithItem =HadithItem(title: hadithTitle, content: hadithContent);
      hadithList.add(hadithItem);

    }
    notifyListeners();

  }

//
}