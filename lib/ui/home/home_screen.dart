import 'package:flutter/material.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:islami_app/ui/home/tabs/ahadith_tab/hadith_tab.dart';
import 'package:islami_app/ui/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/settings_tab/settings_tab.dart';
import 'package:islami_app/ui/home/tabs/tasbih_tab/tasbih_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../utils/utils.dart';

class HomeScreen extends StatefulWidget {
  static String routeName='/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
    return  Container(
      decoration:  BoxDecoration(
      image:  DecorationImage(  fit: BoxFit.fill,
          image:AssetImage(getImagePathByName(imageName:
          provider.currentTheme==ThemeMode.light?'default_bg.png':'dark_bg.png')))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.app_title),
      ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).colorScheme.primary
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.quran,icon: ImageIcon(
                  AssetImage( getImagePathByName(
                      imageName: 'icon_quran.png'))
              )),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.hadith,icon: ImageIcon(
                  AssetImage( getImagePathByName(
                      imageName: 'icon_hadeth.png'))
              )),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.tasbeh,icon: ImageIcon(
                  AssetImage( getImagePathByName(
                      imageName: 'icon_sebha.png'))
              )),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.radio,icon: ImageIcon(
                  AssetImage( getImagePathByName(
                      imageName: 'icon_radio.png'))
              )),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.settings,icon: Icon(Icons.settings_rounded)
              )
            ],

          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs=[QuranTab(),HadithTab(),TasbihTab(),RadioTab(),SettingsTab()];
}