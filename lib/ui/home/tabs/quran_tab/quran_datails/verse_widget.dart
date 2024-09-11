import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
    String verse;
    VerseWidget({required this.verse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
      child: Text(verse,style:Theme.of(context).textTheme.bodySmall,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,),


    );
  }
}
