import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/providers/hadith_provider/hadith_provider.dart';
import 'package:islami_app/utils/utils.dart';
import 'package:provider/provider.dart';

import 'hadithTitleWidget.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
//List<HadithItem>hadithList=[];

  List<String> hadithNames=[];

  List<String> hadithContent=[];

  @override
  Widget build(BuildContext context) {
    var hadithprovider =Provider.of<HadithProvider>(context);

    if(hadithprovider.hadithList.isEmpty) hadithprovider.loadHadethFile();
    return Container(
      child: hadithprovider.hadithList.isEmpty?Center(child: CircularProgressIndicator(),)
        :Column(
      children: [
        Expanded(flex: 1,
            child: Center(child: Image.asset(getImagePathByName(imageName: 'hadeth_logo.png')))),
        Container(alignment: Alignment.center,
          decoration:  BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: Theme.of(context).dividerColor,width: 2))

          ),
          child:  IntrinsicHeight (
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text('الاحاديث',textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall
                  ),
                ),

              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.separated(itemBuilder: (context,index)=>
              HadithTitleWidget(hadithItem:hadithprovider.hadithList[index] ),
              separatorBuilder: (context,index)=>Container(
                width: double.infinity,
                height: 2,
                  color: Theme.of(context).dividerColor,
              ),
              itemCount: hadithprovider.hadithList.length),
        )
],
    ));
  }

  // void loadHadethFile() async{
  //   String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
  //   List<String>allAhadith=  fileContent.trim().split('#');
  //
  //   for(int i=0;i<allAhadith.length;i++){
  //     List<String>hadithLines=allAhadith[i].trim().split('\n');
  //      String hadithTitle =hadithLines[0];
  //      hadithLines.removeAt(0);
  //     String hadithContent= hadithLines.join('\n');
  //  HadithItem hadithItem =HadithItem(title: hadithTitle, content: hadithContent);
  //  hadithList.add(hadithItem);
  //
  //   }
  //
  //   setState(() {
  //
  //   });
  // }
}

class HadithItem{
  String title;
  String content;
  HadithItem({required this.title,required this.content});
}