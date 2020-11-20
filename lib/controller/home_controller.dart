import 'package:get/get.dart';

class HomeController extends GetxController {

  // the tabs number
  final tabsNumber = 5;

  // the current selected tab
  final _currentTab = 2.obs;
  set currentTab(value) => this._currentTab.value = value;
  get currentTab => this._currentTab.value;
}
