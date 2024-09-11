
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'language_bottom_sheet.dart';
import 'theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Text(AppLocalizations.of(context)!.theme,
            style:Theme.of(context).textTheme.bodySmall),
        SizedBox(height:8),
        InkWell(
          onTap: (){
            showThemeBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Theme.of(context).dividerColor)
            ),
            child: Text(AppLocalizations.of(context)!.light,style:Theme.of(context).textTheme.bodySmall),
          ),
        ),

SizedBox(height: 16,),
          Text(AppLocalizations.of(context)!.language,style:Theme.of(context).textTheme.labelMedium),
          SizedBox(height:8),
          InkWell(
            onTap: (){
             showLanguageBottomSheet();
          },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).dividerColor)
              ),
              child: Text(AppLocalizations.of(context)!.english,style:Theme.of(context).textTheme.bodySmall),
            ),
          ),
      ],),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context)=>ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context,  builder: (context)=>LanguageBottomSheet());

  }
}
