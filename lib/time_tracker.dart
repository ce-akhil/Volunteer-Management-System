import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vms/action_button.dart';
import 'package:vms/appbottombar.dart';

class TimeTracker extends StatefulWidget {
  @override
  _TimeTrackerState createState() => _TimeTrackerState();
}

class _TimeTrackerState extends State<TimeTracker> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    double tileMargin = 30;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Volunteer management System'),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  AppActionButton(),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
              child: Container(
                child: ResponsiveGridRow(
                  children: [
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 12,
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.calendar),
                        title: Text('1 April 2020'),
                        subtitle: Text('12:07'),
                        trailing: RaisedButton(
                          child: Text('Start Session',
                            style: TextStyle(
                              color: Color(0xFF512DA8),
                            ),),
                            onPressed: null),
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 12,
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.calendar),
                        title: Text('5 April 2020'),
                        subtitle: Text('12:07',
                         ),
                        trailing: RaisedButton(
                            child: Text('Start Session',
                              style: TextStyle(
                                color: Color(0xFF512DA8),
                              ),),
                            onPressed: null),
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 12,
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.calendar),
                        title: Text('10 April 2020'),
                        subtitle: Text('12:07',
                        ),
                        trailing: RaisedButton(
                            child: Text('Start Session',
                              style: TextStyle(
                                color: Color(0xFF512DA8),
                              ),),
                            onPressed: null),
                      ),
                    ),
                    ResponsiveGridCol(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                  ],
                ),
              )),
        ],
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

