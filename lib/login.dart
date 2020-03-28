import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  final double tileMargin = 10;

  final String title;

  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or log in with'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              if (ModalRoute.of(_scaffoldKey.currentContext).settings.name ==
                  '/auth/signup') {
                BotToast.showText(text: 'You are already at Signup Page');
                return;
              }
            },
            child: Text(
              'Register',
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _warnUserAboutInvalidData() async {
      return await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Any hesitation?'),
                content: const Text(
                    'If you are getting any issue while filling the form we are happy to help. Feel free to contact us.'),
                actions: <Widget>[
                  FlatButton(
                    child: Text(
                      'YES',
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'NO',
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                ],
              );
            },
          ) ??
          false;
    }

    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    return Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Login',
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          onWillPop: _warnUserAboutInvalidData,
          child: Scrollbar(
            child: SingleChildScrollView(
              dragStartBehavior: DragStartBehavior.down,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ResponsiveGridRow(
                  children: [
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 12,
                      child: Center(
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 40)),
                      )
                    ),
                    if (isPortrait) _addGap(tileMargin * 5),
                    ResponsiveGridCol(
                        xs: 12,
                        child: TextFormField(
                          decoration: InputDecoration(

                            hintText: 'Enter your login number',
                            border: const UnderlineInputBorder(),
                            filled: true,

                          ),
                          validator: (String value) {
                            if (value == null) {
                              return null;
                            }
                            if (value.isEmpty) {
                              return 'Please enter valid mobile number';
                            }
                            final n = num.tryParse(value);
                            if (n == null) {
                              return '"$value" is not a valid number';
                            }
                            if (n < 4999999999) {
                              return '"$value" is not a valid phone number';
                            }
                            return null;
                          },
                          maxLines: 1,
                          maxLength: 10,
                        )),
                    ResponsiveGridCol(
                        xs: 12,
                        child: TextFormField(
                          decoration: new InputDecoration(
                            hintText: 'Enter your password'
                                ,
                            border: const UnderlineInputBorder(),
                            filled: true,
                          ),
                        )),
                    ResponsiveGridCol(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Forget Password?',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      child: ListTile(
                        title: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                          ),
                        ),
                      ),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      child: _createAccountLabel(context),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      child: _divider(),
                    ),
                    if (isPortrait) _addGap(tileMargin),
                    ResponsiveGridCol(
                      xs: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              iconSize: 40,
                              icon: Icon(FontAwesomeIcons.facebook),
                              onPressed: (){}),
                        ],
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            iconSize: 40,
                            icon: Icon(FontAwesomeIcons.google),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
