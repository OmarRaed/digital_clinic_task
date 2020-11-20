import 'package:digital_clinic/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {

  static const routeName = '/splashScreen' ;

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeScreen() ,
      title: new Text(
        'Digital Clinic',
        style: Theme.of(context).textTheme.headline4,
      ),
      image: new Image.asset("assets/images/app_logo.png"),
      backgroundColor: Theme.of(context).backgroundColor,
      photoSize: 60.0,
      useLoader: false,
    );
  }
}
