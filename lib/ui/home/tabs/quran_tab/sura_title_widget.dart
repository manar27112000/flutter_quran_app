import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'quran_datails/quran_datails.dart';

class SuraName extends StatelessWidget {
  String suraTitle;
  String numOfVerser;
  int index;
   SuraName({required this.suraTitle,required this.numOfVerser,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      child: InkWell
        (onTap: (){
          Navigator.pushNamed(context, QuranDatailsScreen.routeName,
              arguments: SuraArguments(suraTitle: suraTitle, index: index)
          );
          
      },
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Text(suraTitle,textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium),
              ),
              Container(width: 2, height: 30,color: Theme.of(context).dividerColor),
              Expanded(
                child: Text(numOfVerser,textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium),),

            ],
          ),
        ),
      ),


    );
  }
}


class  SuraArguments{
  String suraTitle;
  int index;
  SuraArguments({required this.suraTitle,required this.index});


}