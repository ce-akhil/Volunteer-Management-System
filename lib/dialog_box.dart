import 'package:flutter/material.dart';

class DialogBox {
  Dialog dialog(
      {String title: 'It will work', IconData icon: Icons.info, subtitle: ''}) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}