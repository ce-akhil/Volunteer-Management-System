import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vms/action_button.dart';
import 'package:vms/appbottombar.dart';

void main() => runApp(volunteerManagementSystem());


// ignore: camel_case_types
class volunteerManagementSystem extends StatefulWidget {

  @override
  _volunteerManagementSystemState createState() => _volunteerManagementSystemState();
}

class _volunteerManagementSystemState extends State<volunteerManagementSystem> {
  double tileMargin = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
            child: const Text('VMS'),
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
//                     if (isPortrait) _addGap(tileMargin),
                      ResponsiveGridCol(
                        xs: 12,
                        child: SizedBox(
                          child:
                          Text('Volunteer management system')
                        ),
                      ),
                     /* if (isPortrait) _addGap(tileMargin * 2),*/
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.user),
                              onPressed: () {
                              },
                            ),
                            Text(
                              'Login',
                            )
                          ],
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.wpforms),
                              onPressed: () {
                              },
                            ),
                            Text('Volunteer'),
                            Text('Application'),
                          ],
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.stopwatch),
                              onPressed: () {
                              },
                            ),
                            Text('Time Tracker')
                          ],
                        ),
                      ),
                      /*if (isPortrait) _addGap(tileMargin),*/
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.phone),
                              onPressed: () {
                              },
                            ),
                            Text('Contact Us'),
                          ],
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.chalkboardTeacher),
                              onPressed: () {
                              },
                            ),
                            Text('Reports')
                          ],
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.calendar),
                              onPressed: () {},
                            ),
                            Text('Upcoming Events')
                          ],
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
      ),
    );
  }
}
