import 'package:digital_clinic/model/user.dart';
import 'package:flutter/material.dart';

class UserItemWidget extends StatelessWidget {
  final User _user;
  UserItemWidget(this._user);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          _user.isBookmarked ? Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left : 10),
              child: SizedBox(width: 25,child: Image.asset('assets/images/bookmark_icon.png')),
            ),
          ) : Container(),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      _user.imageLink,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  _user.isOnline
                      ? Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 10.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            title: Text(_user.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_user.specialization),
                Text('${_user.distance}km away')
              ],
            ),
            trailing: Container(
              width: 50,
              height: 25,
              color: Theme.of(context).accentColor,
              child: Row(children: [
                Icon(
                  Icons.star,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  '${_user.rate}',
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                FlatButton.icon(
                  onPressed: _user.videoEnabled ? () {} : null,
                  icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: _user.videoEnabled
                        ? Image.asset('assets/images/video_icon.png')
                        : Image.asset('assets/images/video_icon_disabled.png'),
                  ),
                  label: Text(
                    ' Video Visit',
                    style: _user.videoEnabled
                        ? TextStyle(color: Theme.of(context).primaryColor)
                        : null,
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1),
                      color: Theme.of(context).accentColor.withOpacity(0.2)),
                  child: IconButton(
                    iconSize: 20,
                    icon:
                        Image.asset('assets/images/calender_selected_icon.png'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1),
                      color: Theme.of(context).accentColor.withOpacity(0.2)),
                  child: IconButton(
                    iconSize: 20,
                    icon:
                        Image.asset('assets/images/message_selected_icon.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
