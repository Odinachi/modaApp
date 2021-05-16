import 'package:flutter/material.dart';

import '../components.dart';

class ProfileBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Material(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Company Name :',
                    style: bigFont,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      'Odibillz',
                      style: smallFont,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Company Address :',
                    style: bigFont,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Text(
                    '2 Alexender road, victoria Island',
                    style: smallFont,
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Company Phone Number :',
                    style: bigFont,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Text(
                    '45757475433',
                    style: smallFont,
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Suscription Status:',
                    style: bigFont,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Text(
                    '90 days',
                    style: smallFont,
                  ))
                ],
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
