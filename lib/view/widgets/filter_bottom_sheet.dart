import 'package:digital_clinic/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterBottomSheet extends StatelessWidget {
  final SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child:
                Text('Sort By', style: Theme.of(context).textTheme.headline6),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                // SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: buildButton(
                      Filter.DOCTOR_FILTER,
                      'assets/images/doctor_selected_icon.png',
                      'Only Doctors',
                      context),
                ),
                // SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: buildButton(
                      Filter.PATIENT_FILTER,
                      'assets/images/profile_selected_icon.png',
                      'Only Patients',
                      context),
                ),
                // SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: buildButton(Filter.NONE,
                      'assets/images/home_selected_icon.png', 'All', context),
                ),
                // SizedBox(width: 20),
              ],
            ),
          ),
          buildAdvancedButton(context),
        ],
      ),
    );
  }

  Widget buildButton(
      Filter filter, String icon, String title, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                icon,
                fit: BoxFit.fitWidth,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).accentColor.withOpacity(0.3)),
            ),
            Center(
                child:
                    Text(title, style: Theme.of(context).textTheme.headline5))
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: controller.filter.value == filter
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              width: 1,
            )),
      ),
      onTap: () {
        controller.filter.value = filter;
        Get.back();
        FocusScope.of(context).unfocus(); // dismiss keyboard
      },
    );
  }

  Widget buildAdvancedButton(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Advanced Filtering",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(width: 10),
            Image.asset(
              'assets/images/filter_icon.png',
              width: 20.0,
              height: 20.0,
            )
          ],
        ),
        onPressed: () {},
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Theme.of(context).primaryColor,
        shape: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid, width: 1.0, color: Colors.black),
            borderRadius: new BorderRadius.circular(5.0)),
      ),
    );
  }
}
