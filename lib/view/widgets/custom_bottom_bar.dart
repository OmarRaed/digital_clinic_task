import 'package:digital_clinic/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomBar extends StatefulWidget {
  final HomeController controller = Get.put(HomeController());
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          _buildBarItem(
              'assets/images/home_selected_icon.png',
              'assets/images/home_unselected_icon.png',
              0,
              widget.controller.currentTab == 0),
          _buildBarItem(
              'assets/images/message_selected_icon.png',
              'assets/images/message_unselected_icon.png',
              1,
              widget.controller.currentTab == 1),
          _buildBarItem(
              'assets/images/doctor_selected_icon.png',
              'assets/images/doctor_unselected_icon.png',
              2,
              widget.controller.currentTab == 2),
          _buildBarItem(
              'assets/images/calender_selected_icon.png',
              'assets/images/calender_unselected_icon.png',
              3,
              widget.controller.currentTab == 3),
          _buildBarItem(
              'assets/images/profile_selected_icon.png',
              'assets/images/profile_unselected_icon.png',
              4,
              widget.controller.currentTab == 4),
        ],
      ),
    );
  }

  Widget _buildBarItem(
      String activeIcon, String icon, int index, bool isSelected) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isSelected
              ? Divider(
                  color: Theme.of(context).primaryColor,
                  height: 20,
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                )
              : Container(
                  color: Colors.transparent,
                  height: 20,
                ),
          InkWell(
            child: SizedBox(
              height: 40,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: isSelected
                    ? Image.asset(activeIcon, fit: BoxFit.scaleDown)
                    : Image.asset(icon, fit: BoxFit.scaleDown),
              ),
            ),
            onTap: () => setState(() => widget.controller.currentTab = index),
          )
        ],
      ),
    );
  }
}
