import 'package:digital_clinic/util/constants.dart';
import 'package:digital_clinic/util/router.dart';
import 'package:digital_clinic/view/screens/my_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Digital Clinic',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: GetRouter.route,
      initialRoute: MySplashScreen.routeName,
      theme: ThemeData(
        // colors
        primarySwatch: kPrimaryColor,
        backgroundColor: kBackgroundColor,
        accentColor: kAccentColor,

        // font family
        fontFamily: 'OpenSans',

        // theme info
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.w700),
          headline4: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor),
          headline5: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor),
          headline6: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor),
        ),
      ),
    );
  }
}
