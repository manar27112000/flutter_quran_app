import 'package:flutter/material.dart';
import 'package:islami_app/style/my_theme_data.dart';
import 'package:islami_app/utils/utils.dart';

class TasbihTab extends StatefulWidget {
  const TasbihTab({super.key});

  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  int counter=0;
  int index=0;
  double angle=0;
  List<String>Azkar=
  ['سبحان الله','الحمد لله','الله اكبر','لا اله الا الله'];
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getImagePathByName(imageName: 'head_sebha_logo.png')),
            Padding(
              padding:  EdgeInsets.only(top: 70.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: (){
                    tasbehFunction();
                  },
                    child: Image.asset(getImagePathByName(imageName: 'body_sebha_logo.png'))),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        const Text('عدد التسبيحات',textAlign: TextAlign.center,style:
        TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(height: 22,),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: MyThemeData.goldColor,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("$counter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: GestureDetector(
            onTap: tasbehFunction,
            child: Container(
              decoration: BoxDecoration(
                  color: MyThemeData.goldColor,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text("${Azkar[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ),

      ],

    );
  }
  tasbehFunction(){
    counter++;
    if(counter%33==0){
      index++;
      counter=1;
    }
    if(index==Azkar.length){
      index=0;
    }

    angle+=360/4;
setState(() {

});
  }
}
