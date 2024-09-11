import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../providers/setting_providers/settings_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);

    return   Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(onTap: (){
           provider.changeThemeMode(ThemeMode.light);
          },
              child:provider.currentTheme==ThemeMode.light?
              buildSelectedThemeItem(AppLocalizations.of(context)!.light):
              buildUnSelectedThemeItem(AppLocalizations.of(context)!.light)),
        SizedBox(height: 15,),
         InkWell(onTap: (){
           provider.changeThemeMode(ThemeMode.dark);

         },
             child: provider.currentTheme==ThemeMode.dark?
    buildSelectedThemeItem(AppLocalizations.of(context)!.dark):
    buildUnSelectedThemeItem(AppLocalizations.of(context)!.dark)),
      ],),
    );
  }

}
Widget buildSelectedThemeItem(String SelectedTheme){
  return   Row(
    children: [
      Text(SelectedTheme,style: TextStyle(
          fontSize: 22,
          color: Colors.black
      ),),
      Spacer(),
      Icon(Icons.check)
    ],
  );
}
Widget buildUnSelectedThemeItem(String UnSelectedTheme){
  return   Row(
    children: [
      Text(UnSelectedTheme,style: TextStyle(
          fontSize: 22,
          color: Colors.black
      ),),
    ],
  );
}
