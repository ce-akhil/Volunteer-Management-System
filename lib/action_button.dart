import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vms/main.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: IconButton(
        icon: Icon(FontAwesomeIcons.home),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()));
        },
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()));
      },
    );
  }
}
