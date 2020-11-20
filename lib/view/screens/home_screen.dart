import 'package:digital_clinic/controller/home_controller.dart';
import 'package:digital_clinic/view/screens/search_screen.dart';
import 'package:digital_clinic/view/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';

  final HomeController homeController = Get.put(HomeController());

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      Container(),
      Container(),
      SearchScreen(),
      Container(),
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Obx(() => _pages[widget.homeController.currentTab])),
          CustomBottomBar(),
        ],
      ),
    );
  }
}
