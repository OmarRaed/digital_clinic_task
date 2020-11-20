import 'package:get/get.dart';
import 'package:digital_clinic/view/screens/my_splash_screen.dart';

class GetRouter {
  static final route = [
    GetPage(
      name: MySplashScreen.routeName,
      page: () => MySplashScreen(),
    ),
  ];
}
