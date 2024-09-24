import 'package:flutter/material.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:islami_app/providers/tasbih_provider/tasbih_provider.dart';
import 'package:islami_app/style/my_theme_data.dart';
import 'package:islami_app/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbihTab extends StatefulWidget {
  static const String routeName='/tasbih_tab';

  const TasbihTab({super.key});

  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  // int counter=0;
  // int index=0;
  // double angle=0;
  // List<String>Azkar=
  // ['سبحان الله','الحمد لله','الله اكبر','لا اله الا الله'];
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);

    var tasbihprovider =Provider.of<TasbihProvider>(context);

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getImagePathByName(imageName: provider.currentTheme==ThemeMode.light?'head_sebha_logo.png':'head_sebha_dark.png')),
            Padding(
              padding:  EdgeInsets.only(top: 70.0),
              child: Transform.rotate(
                angle: TasbihProvider.angle,
                child: InkWell(
                  onTap: (){
                   tasbihprovider.tasbehFunction();
                  },
                    child: Image.asset(getImagePathByName(imageName: provider.currentTheme==ThemeMode.light?'body_sebha_logo.png':'body_sebha_dark.png'))),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
         Text(AppLocalizations.of(context)!.sebha,textAlign: TextAlign.center,style:
         Theme.of(context).textTheme.titleMedium,),
        const SizedBox(height: 22,),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: provider.currentTheme==ThemeMode.light?MyThemeData.goldColor:Colors.yellow,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("${TasbihProvider.counter}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: InkWell(
            onTap:tasbihprovider.tasbehFunction,
            child: Container(
              decoration: BoxDecoration(
                  color: provider.currentTheme==ThemeMode.light?MyThemeData.goldColor:Colors.yellow,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Text("${tasbihprovider.Azkar[TasbihProvider.index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ),

      ],

    );
  }
//   tasbehFunction(){
//     counter++;
//     if(counter%33==0){
//       index++;
//       counter=1;
//     }
//     if(index==Azkar.length){
//       index=0;
//     }
//
//     angle+=360/4;
// setState(() {
//
// });
//   }
}
