import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatelessWidget {
 static String routeName='/';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context,HomeScreen.routeName,);
    });
    return Scaffold(
      body:  Image.asset(getImagePathByName(imageName:'splash.png'),
          width: double.infinity,
          height: double.infinity,
          fit:BoxFit.fill),
    );
  }
}
