import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/setting_providers/settings_provider.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);

    return   Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(onTap: (){provider.changeAppLanguage('en');},
              child:provider.currentLang=='en'?
              buildSelectedLanguageItem(AppLocalizations.of(context)!.english):
              buildUnSelectedLanguageItem( AppLocalizations.of(context)!.english)),
        SizedBox(height: 15,),
         InkWell(onTap: (){provider.changeAppLanguage('ar');},
    child:provider.currentLang=='ar'?
    buildSelectedLanguageItem(AppLocalizations.of(context)!.arabic):
    buildUnSelectedLanguageItem( AppLocalizations.of(context)!.arabic)),
      ],),
    );
  }

}
Widget buildSelectedLanguageItem(String SelectedLanguage){
  return   Row(
    children: [
      Text(SelectedLanguage,style: TextStyle(
          fontSize: 22,
          color: Colors.black
      ),),
      Spacer(),
      Icon(Icons.check)
    ],
  );
}
Widget buildUnSelectedLanguageItem(String UnSelectedLanguage){
  return   Row(
    children: [
      Text(UnSelectedLanguage,style: TextStyle(
          fontSize: 22,
          color: Colors.black
      ),),
    ],
  );
}
