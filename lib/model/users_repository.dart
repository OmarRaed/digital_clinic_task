import 'package:digital_clinic/model/user.dart';

class UsersRepository {
  List<User> get users {
    var _users = <User>[];
    _users.add(User(
      name: 'Matthew Wiebe',
      specialization: 'Ophthalmologist',
      imageLink:
          'https://cdn.sanity.io/images/0vv8moc6/hcplive/0ebb6a8f0c2850697532805d09d4ff10e838a74b-200x200.jpg?auto=format',
      distance: 80,
      rate: 4.6,
      userType: UserType.DOCTOR,
      isBookmarked: true,
      isOnline: true,
      videoEnabled: false,
    ));
    _users.add(User(
      name: 'Isabelle Ringing',
      specialization: 'dentist',
      imageLink:
          'https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip',
      distance: 80,
      rate: 4.6,
      userType: UserType.DOCTOR,
      isBookmarked: true,
      isOnline: true,
      videoEnabled: true,
    ));
    _users.add(User(
      name: 'Danka Peter',
      specialization: 'dentist',
      imageLink:
          'https://s3-eu-west-1.amazonaws.com/intercare-web-public/wysiwyg-uploads%2F1569586526901-doctor.jpg',
      distance: 80,
      rate: 4.6,
      userType: UserType.DOCTOR,
      isBookmarked: false,
      isOnline: true,
      videoEnabled: false,
    ));
    _users.add(User(
      name: 'Ray Sin',
      specialization: 'Ophthalmologist',
      imageLink:
          'https://images.pexels.com/photos/2182979/pexels-photo-2182979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      distance: 80,
      rate: 4.6,
      userType: UserType.DOCTOR,
      isBookmarked: false,
      isOnline: false,
      videoEnabled: false,
    ));
    _users.add(User(
      name: 'John Quil',
      specialization: '-',
      imageLink:
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      distance: 80,
      rate: 4.6,
      userType: UserType.PATIENT,
      isBookmarked: true,
      isOnline: false,
      videoEnabled: true,
    ));
    _users.add(User(
      name: 'Roberto Nickson',
      specialization: '-',
      imageLink:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      distance: 80,
      rate: 4.6,
      userType: UserType.PATIENT,
      isBookmarked: true,
      isOnline: true,
      videoEnabled: true,
    ));
    _users.add(User(
      name: 'Perry Scope',
      specialization: '-',
      imageLink:
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      distance: 80,
      rate: 4.6,
      userType: UserType.PATIENT,
      isBookmarked: true,
      isOnline: false,
      videoEnabled: true,
    ));
    _users.add(User(
      name: 'Rod Knee',
      specialization: '-',
      imageLink:
          'https://image.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
      distance: 80,
      rate: 4.6,
      userType: UserType.PATIENT,
      isBookmarked: false,
      isOnline: true,
      videoEnabled: false,
    ));
    return _users;
  }
}
