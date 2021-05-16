import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';
import 'info_dialog.dart';

void _launchMail() async => await canLaunch('mailto:odinachidavid@yahoo.com')
    ? await launch('mailto:odinachidavid@yahoo.com')
    : throw 'Could not Call';

class ButtomButtons extends StatelessWidget {
  static Route<Object> _dialogBuilder(BuildContext context, Object arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => infoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Buttons(
              text: 'Edit Your Profile',
              onPress: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Buttons(
              text: 'Contact Owner',
              onPress: _launchMail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Buttons(
              text: 'Info',
              onPress: () {
                Navigator.of(context).restorablePush(_dialogBuilder);
              },
            ),
          )
        ],
      ),
    );
  }
}
