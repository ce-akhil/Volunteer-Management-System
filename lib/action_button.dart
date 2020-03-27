import 'package:flutter/material.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: IconButton(
        icon: Icon(Icons.home),
        onPressed: () {},
      ),
      onPressed: () {},
    );
  }
}
