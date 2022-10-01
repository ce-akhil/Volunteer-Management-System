import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vms/action_button.dart';
import 'package:vms/appbottombar.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    double tileMargin = 10;

    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Contact Us',
            ),
          ),
          bottomNavigationBar:  AppBottomBar(),
          floatingActionButton:  AppActionButton(),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidate: true,
              child: ResponsiveGridRow(
                children: [
                  /*if (MediaQuery.of(context).orientation ==
                      Orientation.portrait)*/
                    ResponsiveGridCol(
                      child: SizedBox(
                        height: centerHeight,
                      ),
                    ),
                  ResponsiveGridCol(
                    xs: 12,
                    sm: 12,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: IconButton(
                            iconSize: 30.0,
                            icon: new Icon(Icons.call),
                            onPressed: _launchPhone,
                          ),
                          radius: 44,
                        ),
                        Text('Call Us'),
                      ],
                    ),
                  ),
                  if (isPortrait) _addGap(tileMargin * 3),
                  ResponsiveGridCol(
                    xs: 12,
                    sm: 6,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: IconButton(
                            iconSize: 56.0,
                            icon: new Icon(Icons.mail),
                            onPressed: _launchEmail,
                          ),
                          radius: 45,
                        ),
                        Text('Mail Us'),
                      ],
                    ),
                  ),
                  if (isPortrait) _addGap(tileMargin * 6),
                  ResponsiveGridCol(
                    xs: 12,
                    sm: 6,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: IconButton(
                            iconSize: 44.0,
                            icon: new Icon(FontAwesomeIcons.whatsapp),
                            onPressed: _launchWhatsApp,
                          ),
                          radius: 44,
                        ),
                        Text('Message us on Whatsapp'),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  final String email = "ce.akhil@gmail.com";

  _launchEmail() async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }

  final String telephoneNumber = "9729943982";

  _launchPhone() async {
    String telephoneUrl = "tel:$telephoneNumber";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  final String whatsAppUrl = "whatsapp://send?phone=9729943982";

  _launchWhatsApp() async {
    try {
      await canLaunch(whatsAppUrl)
          ? await launch(whatsAppUrl)
          : print(
          "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    } catch (e) {
      print(e.toString());
    }
  }
}

ResponsiveGridCol _addGap(double tileMargin) {
  return ResponsiveGridCol(
    child: SizedBox(
      height: tileMargin,
    ),
  );
}
