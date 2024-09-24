import 'package:flutter/material.dart';
import 'package:islami_app/providers/hadith_provider/hadith_provider.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:islami_app/style/my_theme_data.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'providers/quran_providers/quran_providers.dart';
import 'ui/home/tabs/ahadith_tab/hadith_details/hadith_details.dart';
import 'ui/home/tabs/quran_tab/quran_datails/quran_datails.dart';

void main( ) {
  runApp( MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (context) =>SettingsProvider(),),
    ChangeNotifierProvider(
      create: (context) =>HadithProvider(),)
  ],
  child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
   // var hadithprovider =Provider.of<HadithProvider>(context);

    return MaterialApp(
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales:  const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale:  Locale(provider.currentLang),
      debugShowCheckedModeBanner: false,
      themeMode: provider.currentTheme,
      theme:MyThemeData.lightTheme,
      darkTheme:MyThemeData.darkTheme,



      routes: {
        SplashScreen.routeName:(_)=>SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDatailsScreen.routeName:(_)=>ChangeNotifierProvider(
            create:(BuildContext context) =>QuranProvider(),
        child: QuranDatailsScreen()),
        HadithDetailsSceen.routeName:(_)=> HadithDetailsSceen()

      },

    );
  }
}

