import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/quran_providers/quran_providers.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:islami_app/ui/home/tabs/quran_tab/quran_datails/verse_widget.dart';
import 'package:islami_app/ui/home/tabs/quran_tab/sura_title_widget.dart';
import 'package:islami_app/utils/utils.dart';
import 'package:provider/provider.dart';

class QuranDatailsScreen extends StatefulWidget {
 static const  String routeName='/quran_details';

  @override
  State<QuranDatailsScreen> createState() => _QuranDatailsScreenState();
}

class _QuranDatailsScreenState extends State<QuranDatailsScreen> {
// List<String> verses=[];

  @override
  Widget build(BuildContext context) {

    var provider =Provider.of<SettingsProvider>(context);
    var quranprovider =Provider.of<QuranProvider>(context);
     SuraArguments arguments=
     ModalRoute.of(context)?.settings.arguments as SuraArguments;
     quranprovider.loadFile(arguments.index);
  if(quranprovider.verses.isEmpty)  quranprovider.loadFile(arguments.index);
    return  Container(
      alignment: Alignment.center,
      decoration:  BoxDecoration(
          image: DecorationImage(  fit: BoxFit.fill,
              image:AssetImage(getImagePathByName(imageName: provider.currentTheme==ThemeMode.light?'default_bg.png':'dark_bg.png')))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(arguments.suraTitle),
          ),
       body:quranprovider.verses.isEmpty?Center(
         child: CircularProgressIndicator(),
       ) : Card(margin: EdgeInsets.symmetric(vertical:40,horizontal: 29 ), child: ListView.separated(
           itemBuilder: (context,index)=>VerseWidget(verse:
           quranprovider.verses[index] ,),
           itemCount: quranprovider.verses.length,
           separatorBuilder:(context,index)=>Divider(
             color: Theme.of(context).dividerColor,
           ),),
       )
      ),
    );
  }

  // void loadFile(index) async{
  //   String fileContent =await rootBundle.loadString('assets/files/${index+1}.txt');
  //   List<String>suraLines=  fileContent.split('\n');
  //   verses=suraLines;
  //   setState(() {
  //
  //   });
  // }
}
  