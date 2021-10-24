import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vms/profile.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key key}) : super(key: key);

  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.bar),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.comment),
            onPressed: null,
          ),
        ],
      ),
    );
  }

  bool checkNotification() {
    return true;
  }
}
