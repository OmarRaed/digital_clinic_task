import 'package:digital_clinic/controller/search_controller.dart';
import 'package:digital_clinic/view/widgets/filter_bottom_sheet.dart';
import 'package:digital_clinic/view/widgets/user_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = 'searchScreen';

  final SearchController controller = Get.put(SearchController());

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Accounts'),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/filter_icon.png'),
            onPressed: () => Get.bottomSheet(
              FilterBottomSheet(),
            ),
          ),
          IconButton(
            icon: Image.asset('assets/images/location_marker_icon.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: TextFormField(
              // controller: ,
              onChanged: (text) => widget.controller.searchName.value = text,
              keyboardType: TextInputType.name,
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.15),
                suffixIcon: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => SingleChildScrollView(
                child: Column(
                  children: [
                    ...widget.controller.users
                        .map((user) => UserItemWidget(user))
                        .toList()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
