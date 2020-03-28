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
          child: const Text('Time Tracker'),
        ),
      ),
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  AppActionButton(),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
              child: ResponsiveGridRow(
                children: [
                  if (isPortrait) _addGap(tileMargin),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: null,
                        child: Text('1 April 2020',
                          style: TextStyle(
                            color: Color(0xFF512DA8),
                          ),
                        ),
                      ),
                    )
                  ),
                  if (isPortrait) _addGap(tileMargin),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(FontAwesomeIcons.chalkboardTeacher),
                            title: Text('Session'),
                            trailing: Text('Learn To Enter Technology'),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: null,
                                child: Text('Start',
                                  style: TextStyle(
                                    color: Color(0xFF512DA8),
                                  ),),
                              ),
                              RaisedButton(
                                onPressed: null,
                                child: Text('Stop',
                                  style: TextStyle(
                                    color: Color(0xFF512DA8),
                                  ),),
                              ),
                              IconButton(icon: Icon(Icons.info), onPressed: null)
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text('01:54:23',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (isPortrait) _addGap(tileMargin*0.5),
                  ResponsiveGridCol(
                    xs: 12,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(FontAwesomeIcons.chalkboardTeacher),
                            title: Text('Session'),
                            trailing: Text('Learn To Enter Technology'),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: null,
                                child: Text('Start',
                                  style: TextStyle(
                                    color: Color(0xFF512DA8),
                                  ),),
                              ),
                              RaisedButton(
                                onPressed: null,
                                child: Text('Stop',
                                  style: TextStyle(
                                    color: Color(0xFF512DA8),
                                  ),),
                              ),
                              IconButton(icon: Icon(Icons.info), onPressed: null)
                            ],),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                ],
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

