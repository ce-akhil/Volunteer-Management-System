import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vms/action_button.dart';
import 'package:vms/appbottombar.dart';

class Report extends StatelessWidget {
  final double tileMargin = 30;
  final centerHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detailed Report',
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.down,
      body: SafeArea(child: getForm(context)),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: AppBottomBar(),
      floatingActionButton: AppActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Form getForm(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;

    return Form(
      child: Scrollbar(
        child: SingleChildScrollView(
          dragStartBehavior: DragStartBehavior.down,
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 500,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText:
                            'Please provide the detailed report of the things that you completed today.',
                        labelText: 'Reports',
                      ),
                      validator: (String value) {
                        if (value == null) {
                          return null;
                        }
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        final n = num.tryParse(value);
                        if (n == null) {
                          return '"$value" is not a valid number';
                        }
                        return null;
                      },
                      maxLines: 10,
                    ),
                  )),
              ResponsiveGridCol(
                  child: RaisedButton(child: Text('Submit'), onPressed: () {})),
              ResponsiveGridCol(
                child: SizedBox(
                  height: centerHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ResponsiveGridCol _addGap(double tileMargin) {
  return ResponsiveGridCol(
    child: SizedBox(
      height: tileMargin,
    ),
  );
}
