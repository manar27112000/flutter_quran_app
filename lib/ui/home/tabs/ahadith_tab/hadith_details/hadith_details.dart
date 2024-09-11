import 'package:flutter/material.dart';
import 'package:islami_app/providers/hadith_provider/hadith_provider.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:islami_app/ui/home/tabs/ahadith_tab/hadith_details/hatith_ontent_widget.dart';
import 'package:islami_app/ui/home/tabs/ahadith_tab/hadith_tab.dart';
import 'package:islami_app/utils/utils.dart';
import 'package:provider/provider.dart';

class HadithDetailsSceen extends StatelessWidget {
  static const String routeName='/hadith_details';
  const HadithDetailsSceen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
    //var hadithprovider =Provider.of<HadithProvider>(context);

    var hadithItem=ModalRoute.of(context)?.settings.arguments as HadithItem;
    return  Container(
      alignment: Alignment.center,
      decoration:  BoxDecoration(
          image: DecorationImage(  fit: BoxFit.fill,
              image:AssetImage(getImagePathByName(imageName:provider.currentTheme==ThemeMode.light?'default_bg.png':'dark_bg.png')))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Text(hadithItem.title),
          ),
        ),
        body: Card(
          elevation: 10,
          margin: EdgeInsets.symmetric(vertical:40,horizontal: 29 ),
          child:HadithContentWidget(content: hadithItem.content) ,
        ),
      ),
    );
  }
}
