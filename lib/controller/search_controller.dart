import 'package:digital_clinic/model/user.dart';
import 'package:get/get.dart';
import 'package:digital_clinic/model/users_repository.dart';

enum Filter { DOCTOR_FILTER, PATIENT_FILTER, NONE }

class SearchController extends GetxController {
  final UsersRepository _repository = UsersRepository();

  var _users = <User>[].obs;

  final _filter = Filter.NONE.obs;
  Rx<Filter> get filter {
    return _filter;
  }

  var _searchName = ''.obs;
  RxString get searchName {
    return _searchName;
  }

  @override
  void onInit() {
    super.onInit();
    _users.assignAll(_repository.users);
  }

  RxList<User> get users {
    switch (_filter.value) {
      case Filter.DOCTOR_FILTER:
        return [
          ..._users.where((user) =>
              user.userType == UserType.DOCTOR &&
              (_searchName.value == "" ||
                  user.name
                      .toLowerCase()
                      .contains(_searchName.value.toLowerCase())))
        ].obs;
      case Filter.PATIENT_FILTER:
        return [
          ..._users.where((user) =>
              user.userType == UserType.PATIENT &&
              (_searchName.value == "" ||
                  user.name
                      .toLowerCase()
                      .contains(_searchName.value.toLowerCase())))
        ].obs;
      default:
        return [
          ..._users.where((user) =>
              _searchName.value == "" ||
              user.name.toLowerCase().contains(_searchName.value.toLowerCase()))
        ].obs;
    }
  }

  void filterDoctor() {
    _filter.value = Filter.DOCTOR_FILTER;
  }

  void filterPatient() {
    _filter.value = Filter.PATIENT_FILTER;
  }

  void clearFilter() {
    _filter.value = Filter.NONE;
  }

  void setSearch(String search) {
    _searchName.value = search;
  }
}
