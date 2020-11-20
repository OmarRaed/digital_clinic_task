import 'package:flutter/cupertino.dart';

enum UserType { DOCTOR, PATIENT }

class User {
  final String name;
  final String specialization;
  final String imageLink;
  final double distance;
  final double rate;
  final UserType userType;
  bool isBookmarked;
  bool isOnline;
  bool videoEnabled;

  User({
    @required this.name,
    @required this.specialization,
    @required this.imageLink,
    @required this.distance,
    @required this.rate,
    @required this.userType,
    this.isBookmarked: false,
    this.isOnline: false,
    this.videoEnabled: false,
  });
}
