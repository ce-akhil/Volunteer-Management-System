import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Events in review',
        ),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border:Border.all(
                    width: 4.0,
                  ),
                ),
                height: 240.0, 
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Stack(children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 56.0,
                              child: ListTile(
                                leading: Icon(FontAwesomeIcons.hashtag),
                                title: Text('Upcoming Event'),
                                subtitle: Text('Technology Study'),
                                trailing: Text('Delhi'),
                              ),
                            ),
                           
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 56.0,
                              child: ListTile(
                                  leading: Icon(FontAwesomeIcons.searchLocation),
                                  title: Text('Location'),
                                  trailing: Text('1 April 2020')
                              ),
                            ),
                          // do not add sized box
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  height: 32.0,
                                  child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text('Status: Pending'
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      child: Text('Register',
                                      style: TextStyle(
                                        color: Colors.blue, //create colorscheme
                                      ),),
                                      onPressed: (){} // do not write null
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
              
              Container(
                decoration: BoxDecoration(
                  border:Border.all(
                    width: 3.0,
                  ),
                ),
                height: 220.0,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Stack(children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 50.0,
                              child: ListTile(
                                leading: Icon(FontAwesomeIcons.hashtag),
                                title: Text('Upcoming Event'),
                                subtitle: Text('Information Study'),
                                trailing: Text('Mumbai'),
                              ),
                            ),
                           
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 50.0,
                              child: ListTile(
                                  leading: Icon(FontAwesomeIcons.searchLocation),
                                  title: Text('Location'),
                                  trailing: Text('5 April 2020')
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  height: 35.0,
                                  child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text('Status: Pending'
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                        child: Text('Register',
                                          style: TextStyle(
                                            color: Color(0xFF512DA8),
                                          ),),
                                        onPressed: null
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border:Border.all(
                    width: 3.0,
                  ),
                ),
                height: 220.0,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Stack(children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 50.0,
                              child: ListTile(
                                leading: Icon(FontAwesomeIcons.hashtag),
                                title: Text('Upcoming Event'),
                                subtitle: Text('Technology Information'),
                                trailing: Text('Banglore'),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                              ),
                              height: 50.0,
                              child: ListTile(
                                  leading: Icon(FontAwesomeIcons.searchLocation),
                                  title: Text('Location'),
                                  trailing: Text('10 April 2020')
                              ),
                            ),
                            SizedBox(height: 10), // give padding instead
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  height: 35.0,
                                  child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text('Status: Pending'
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                        child: Text('Register',
                                          style: TextStyle(
                                            color: Color(0xFF512DA8),
                                          ),),
                                        onPressed: null
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
