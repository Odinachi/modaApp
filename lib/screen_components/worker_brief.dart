import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

void _launchCall() async => await canLaunch('tel:07066028606')
    ? await launch('tel:07066028606')
    : throw 'Could not Call';

class WorkerBrief extends StatefulWidget {
  @override
  _WorkerBriefState createState() => _WorkerBriefState();
}

class _WorkerBriefState extends State<WorkerBrief> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              'Odinachi David',
              style: bigFont,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tailor \n 2 years Experience \n Lagos \n N100000 ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          trailing: Column(
            children: [
              GestureDetector(
                onTap: () {
                  _launchCall();
                },
                child: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.green,
                  size: 45,
                ),
              ),
            ],
          ),
        ),
        elevation: 6.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
