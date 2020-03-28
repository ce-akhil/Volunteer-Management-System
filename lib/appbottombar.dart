import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.perm_identity),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  bool checkNotification() {
    return true;
  }
}
