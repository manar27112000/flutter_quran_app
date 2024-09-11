import 'package:flutter/material.dart';

class MyThemeData{
  static const Color goldColor =Color(0xFFB7935F);
  static const Color darkColor =Color(0xFF141A2E);
  static ThemeData lightTheme =ThemeData(
    primaryColor: goldColor,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB7935f)),
      canvasColor: const Color(0xFFB7935F),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          titleTextStyle: TextStyle(
            fontSize:24,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor:Colors.transparent,
          centerTitle: true,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
              )
          )
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
            size: 36
        ),
        unselectedIconTheme: IconThemeData(
            size: 24
        ),

      ),
   dividerColor: goldColor,
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black
      ),



    )

  );
  static ThemeData darkTheme =ThemeData(
cardColor: darkColor,
    primaryColor: darkColor,
      dividerColor: goldColor,
      textTheme: const TextTheme(
        labelMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.yellow
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.yellow
        ),
        bodySmall: TextStyle(
            fontSize: 18,
            color: Colors.yellow
        ),



      ),
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF141A2E)),
      canvasColor: const Color(0xFF141A2E),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
          titleTextStyle: TextStyle(
            fontSize:24,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor:Colors.transparent,
          centerTitle: true,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
              )
          )
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
            size: 36
        ),
        unselectedIconTheme: IconThemeData(
            size: 24
        ),

      ),
    cardTheme: CardTheme(color: darkColor),
  );


}