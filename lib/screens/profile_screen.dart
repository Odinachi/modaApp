import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda/screen_components/edit_profile.dart';
import 'package:moda/screen_components/profile_box.dart';
import 'package:moda/screen_components/profile_screen_bottom_bottons.dart';
import 'package:moda/screen_components/worker_brief.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = "profile_screen";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EditProfile(),
      bottomSheet: ButtomButtons(),
      body: SafeArea(
        child: ListView(
          children: [
            ProfileDetails(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Text(
                'Available Employees:',
                style: GoogleFonts.rationale(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  WorkerBrief(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProfileBox(),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.pinkAccent, Colors.blue])),
    );
  }
}

// class WorkersListDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         child: Column(
//           children: [
//             ListTile(
//               leading: Text('NAME :'),
//               trailing: Text('Odinachi David'),
//             ),
//             ListTile(
//               leading: Text('Years of Experience :'),
//               trailing: Text('20 years'),
//             ),
//             ListTile(
//               leading: Text('City :'),
//               trailing: Text('Lagos'),
//             ),
//             ListTile(
//               leading: Text('Academics :'),
//               trailing: Text('Bachelors Degree'),
//             ),
//             ListTile(
//               leading: Text('SEX :'),
//               trailing: Text(
//                 'Male',
//               ),
//             ),
//             ListTile(
//               leading: Text('whatsapp Line :'),
//               trailing: Text('08066885577'),
//             ),
//             ListTile(
//               leading: Text('Mode :'),
//               trailing: Text('Contract'),
//             ),
//             ListTile(
//               leading: Text('ACTIVE CALL LINE :'),
//               trailing: Text('08066885577'),
//             ),
//             ListTile(
//               leading: Text('ACCOMODATION? :'),
//               trailing: Text('Yes'),
//             ),
//             ListTile(
//               leading: Text('MODE OF PAYMENT :'),
//               trailing: Text('commission'),
//             ),
//             ListTile(
//               leading: Text('Rate :'),
//               trailing: Text('N100,000'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 children: [
//                   Buttons(text: ('Message on WhatsApp')),
//                   SizedBox(
//                     width: 40,
//                   ),
//                   Buttons(
//                     text: ('Call'),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 30.0,
//               ),
//               child: Text(
//                 'Available Samples of jobs done',
//                 textAlign: TextAlign.left,
//               ),
//             ),
//             Image(
//               image: AssetImage('images/df.jpg'),
//             ),
//             Image(
//               image: AssetImage('images/df.jpg'),
//             ),
//             Image(
//               image: AssetImage('images/df.jpg'),
//             ),
//             Image(
//               image: AssetImage('images/df.jpg'),
//             ),
//           ],
//         ),
//       ),
//       elevation: 6.0,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(20))),
//     );
//   }
// }
