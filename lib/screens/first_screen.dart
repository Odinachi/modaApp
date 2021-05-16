import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda/screens/login_register_screen.dart';
import 'package:moda/screens/profile_screen.dart';

import '../components.dart';

class FirstScreen extends StatelessWidget {
  static const String id = "first_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TailorForm(),
      body: SafeArea(
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          height: 300,
          image: AssetImage('images/pd.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15, bottom: 1),
          child: Text(
            'GET STARTED',
            textAlign: TextAlign.left,
            style: GoogleFonts.rationale(
                fontSize: 18,
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'We connect Millions of Tailors, cutters and illustrators to big fashion designers everyday',
                textAlign: TextAlign.left,
                style: GoogleFonts.rationale(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Buttons(
                    text: 'I Want to hire',
                    onPress: () {
                      Navigator.pushNamed((context), AuthScreen.id);
                    },
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Buttons(
                  text: 'I want a job',
                  onPress: () => Scaffold.of(context).openDrawer(),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class TailorForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        right: 50,
      ),
      child: Material(
        child: Container(
          margin: EdgeInsets.all(30),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Please input your Details Accurately',
                  style: bigFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  hintText: 'First Name',
                  label: 'First Name',
                  ifPassword: false,
                  validator: (value) {
                    if (value.isEmpty ||
                        value.length < 5 ||
                        value.length > 20) {
                      return 'put a valid First Name';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  hintText: 'Last Name',
                  label: 'Last Name',
                  ifPassword: false,
                  validator: (value) {
                    if (value.isEmpty ||
                        value.length < 5 ||
                        value.length > 20) {
                      return 'put a valid First Name';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  validator: (value) {
                    if (value.isEmpty ||
                        value.length < 5 ||
                        value.length > 20) {
                      return 'put a place';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Location',
                  label: 'Location',
                  ifPassword: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  validator: (value) {
                    if (value.isEmpty || value < 5 || value > 13) {
                      return 'put a valid Number';
                    } else {
                      return null;
                    }
                  },
                  kinputType: TextInputType.phone,
                  hintText: 'Whatsapp Number',
                  label: 'Whatapp Number',
                  ifPassword: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  validator: (value) {
                    if (value.isEmpty || value.toInt > 20) {
                      return 'put a valid years';
                    } else {
                      return null;
                    }
                  },
                  kinputType: TextInputType.number,
                  hintText: 'Years of Experience',
                  label: 'Years of Experiences',
                  ifPassword: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FormattedInputForm(
                  validator: (value) {
                    if (value.isEmpty || value.toInt() > 13) {
                      return 'put a valid years';
                    } else {
                      return null;
                    }
                  },
                  kinputType: TextInputType.number,
                  hintText: 'Age',
                  label: 'Age',
                  ifPassword: false,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Buttons(
                    onPress: () => Navigator.pop(context),
                    text: 'Save',
                  ),
                ),
              )
            ],
          ),
        ),
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
