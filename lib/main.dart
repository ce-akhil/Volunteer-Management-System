import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vms/action_button.dart';
import 'package:vms/appbottombar.dart';
import 'package:vms/contactus.dart';
import 'package:vms/login.dart';
import 'package:vms/report.dart';
import 'package:vms/theme.dart';
import 'package:vms/volunteer_application.dart';

void main() => runApp(MainApp());


// ignore: camel_case_types
class MainApp extends StatefulWidget {


  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: themeData,
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    double tileMargin = 30;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      child: SizedBox(
                        height: (isPortrait) ? 196 : 76,
                        child:
                        Image(image: AssetImage("assets/logo/vms.png")),
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin * 2),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.user),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginPage()));
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FormView()));
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
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.phone),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ContactUs()));
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Report()));
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


