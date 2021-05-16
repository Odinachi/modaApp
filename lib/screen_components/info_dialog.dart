import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class infoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        margin: EdgeInsets.all(15),
        height: 700.0,
        width: 300.0,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Moda App',
                style: GoogleFonts.concertOne(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
            ),
            Row(
              children: [
                Text(
                  '1.',
                  textAlign: TextAlign.center,
                  style: smallFont,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Moda App is Still very much under development as we\'ll be updating soon enough',
                    style: infoFont,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Row(
              children: [
                Text(
                  '2.',
                  textAlign: TextAlign.center,
                  style: smallFont,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'The app is completely free to use, tho some special service will be included over time',
                    style: infoFont,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Row(
              children: [
                Text(
                  '3.',
                  textAlign: TextAlign.center,
                  style: smallFont,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'We will not sell or distribute your data for whatsoever reason as it is confidential to us',
                    style: infoFont,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Row(
              children: [
                Text(
                  '4.',
                  textAlign: TextAlign.center,
                  style: smallFont,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Do your background check on all applicants you wish to employ before interview as we\'ll not be held for loss, damage or any sort of event.',
                    style: infoFont,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            Row(
              children: [
                Text(
                  '5.',
                  textAlign: TextAlign.center,
                  style: smallFont,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'this App is copyrighted so you don\'t replicate or use for any benefits without an express written persion from the Owner',
                    style: infoFont,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 3,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Ok, I Understand',
                      style: GoogleFonts.concertOne(
                          fontSize: 20, color: Colors.pinkAccent),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
