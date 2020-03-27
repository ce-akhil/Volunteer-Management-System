import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vms/appbottombar.dart';
import 'package:vms/dialog_box.dart';


import 'package:responsive_grid/responsive_grid.dart';


class FormView extends StatelessWidget {


  final double tileMargin = 30;
  final centerHeight = 50.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,

      body: SafeArea(
        child: getForm(context)
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:  AppBottomBar(),
      floatingActionButton: _actionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  _inProgress({String message: 'Loading....'}) {
    return ListTile(
      leading: Icon(Icons.hourglass_empty),
      title: Text(message),
      trailing: CircularProgressIndicator(),
    );
  }

  _noSignedInUser({String message: 'Please Signup.'}) {
    return InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.call_to_action),
          title: Text(message),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  Future<bool> _warnUserAboutInvalidData() async {


    return await showDialog<bool>(

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

  Form getForm(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;

    return Form(

      onWillPop: _warnUserAboutInvalidData,
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
                    maxLength: 10,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.account_balance_wallet),
                      hintText: ' Name',
                      labelText: 'Your complete Name',
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
                    maxLines: 1,
                  ),
                  trailing: Tooltip(
                    message: "Enter your Complete name present in documents",
                    child: IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        showDialog(
                            context: context,
                            child: DialogBox().dialog(
                                title: 'Name',
                                subtitle:
                                'Enter your Complete name present in documents'));
                      },
                    ),
                  ),
                )
              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 10,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText: 'Zip Postal Code',
                        labelText: 'Your Zip Postal Code',
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
                      maxLines: 1,
                    ),
                    trailing: Tooltip(
                      message: "Enter the correct Zip Postal Code of your area",
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'ZIP',
                                  subtitle:
                                  'Enter the correct Zip Postal Code of your area'));
                        },
                      ),
                    ),
                  )
              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 10,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.phone),
                        hintText: '  Where can we reach you ?',
                        labelText: 'Phone Number *',
                        prefixText: '+91 ',
                      ),
                      keyboardType: TextInputType.phone,

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
                    ),
                    trailing: Tooltip(
                      message: '100% privacy guaranteed. We will never share your details.',
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'Current mobile number.',
                                  subtitle:
                                  '100% privacy guaranteed. We will never share your details.'));
                        },
                      ),
                    ),
                  ),

              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.email),
                        hintText: 'Current e-mail address.',
                        labelText: 'E-mail',
                      ),
                    ),
                    trailing: Tooltip(
                      message:
                      'Share correct Email address to ensure timely communication regarding this application.',
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'Current Email address.',
                                  subtitle:
                                  'Share correct Email address to ensure timely communication regarding this application.'));
                        },
                      ),
                    ),
                  )
              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 10,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText: 'Tasks',
                        labelText: 'What specified tasks are you most interseted in working?',

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
                      maxLines: 1,
                    ),
                    trailing: Tooltip(
                      message: "What specified tasks are you most interseted in working?",
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'Tasks',
                                  subtitle:
                                  'What specified tasks are you most interseted in working?'));
                        },
                      ),
                    ),
                  )
              ),
              ResponsiveGridCol(
                  xs: 12,
                  sm: 6,
                  child: ListTile(
                    title: TextFormField(
                      maxLength: 10,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        icon: Icon(Icons.account_balance_wallet),
                        hintText: 'skills and experience',
                        labelText: 'skills and experience',
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
                      maxLines: 1,
                    ),
                    trailing: Tooltip(
                      message: "What specified skills and experience you have as a volunteer",
                      child: IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: DialogBox().dialog(
                                  title: 'skills and experience',
                                  subtitle:
                                  'What specified skills and experience you have as a volunteer'));
                        },
                      ),
                    ),
                  )
              ),
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

  FloatingActionButton _actionButton(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Next',
      child: Icon(Icons.arrow_forward_ios),
      onPressed: (){}
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
