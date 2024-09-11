import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/ahadith_tab/hadith_tab.dart';

import 'hadith_details/hadith_details.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

 HadithTitleWidget({required this.hadithItem});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadithDetailsSceen.routeName,arguments: hadithItem);

      },
      child: Container(
       child: Text(hadithItem.title,
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }
}
