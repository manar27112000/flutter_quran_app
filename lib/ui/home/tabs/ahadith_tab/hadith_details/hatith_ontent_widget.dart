import 'package:flutter/material.dart';
import 'package:islami_app/utils/utils.dart';

class HadithContentWidget extends StatelessWidget {
String content;
HadithContentWidget({required this.content});
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: SingleChildScrollView(
             child: Text(content,textDirection: TextDirection.rtl,
               textAlign: TextAlign.center,style:
              Theme.of(context).textTheme.bodySmall,),
           ),
         ),
    );
  }
}
