import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moda/components.dart';
import 'package:moda/screens/profile_screen.dart';
import '../components.dart';

String _passwordInput;
String loginMode = 'login';
final _formKey = GlobalKey<FormState>();

class AuthScreen extends StatefulWidget {
  static const String id = "auth_screen";

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              loginMode = 'login';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: loginMode == 'login'
                                        ? Colors.pinkAccent
                                        : Colors.white),
                                color: loginMode == 'login'
                                    ? Colors.white
                                    : Colors.pinkAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text('Login',
                                  style: GoogleFonts.rationale(
                                      fontSize: 30,
                                      color: loginMode == 'login'
                                          ? Colors.pinkAccent
                                          : Colors.white)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              loginMode = 'signup';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: loginMode == 'login'
                                        ? Colors.white
                                        : Colors.pinkAccent),
                                color: loginMode == 'login'
                                    ? Colors.pinkAccent
                                    : Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                'SignUp',
                                style: GoogleFonts.rationale(
                                    fontSize: 30,
                                    color: loginMode == 'login'
                                        ? Colors.white
                                        : Colors.pinkAccent),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    switcher(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget switcher() {
  if (loginMode == 'login') {
    return LoginArea();
  } else {
    return SignUpArea();
  }
}

class SignUpArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Yooo! Welcome,',
                textAlign: TextAlign.left,
                style: GoogleFonts.rationale(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FormattedInputForm(
              hintText: 'First Name',
              label: 'First Name',
              ifPassword: false,
              kinputType: TextInputType.text,
              validator: (value) {
                if (value.length < 3) {
                  return 'input a valid Name';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'Last Name',
              label: 'Last Name',
              ifPassword: false,
              kinputType: TextInputType.text,
              validator: (value) {
                if (value.length < 3) {
                  return 'input a valid Name';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'Email Name',
              label: 'Email Name',
              ifPassword: false,
              kinputType: TextInputType.emailAddress,
              validator: emailValidator,
              onChanged: (value) {
                _passwordInput = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'Password',
              label: 'Password',
              ifPassword: true,
              kinputType: TextInputType.visiblePassword,
              validator: passwordValidator,
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'Repeat Password',
              label: 'Repeat Password',
              ifPassword: true,
              kinputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value.isEmpty || value == _passwordInput) {
                  return 'Password must match';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'Whatsapp Line',
              label: 'Whatsapp Line',
              ifPassword: false,
              kinputType: TextInputType.phone,
              validator: (value) {
                if (value.length < 5 || value.length > 12) {
                  return 'input a valid Whatsapp number';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Buttons(
                text: 'Sign Up',
                onPress: () {
                  if (_formKey.currentState.validate()) {
                    print("Validated");
                  } else {
                    print("Not Validated");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Hey, Welcome Back!',
                textAlign: TextAlign.left,
                style: GoogleFonts.rationale(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Text(
                'We\'re glad to have you visit us again',
                textAlign: TextAlign.left,
                style: GoogleFonts.rationale(
                    fontSize: 15,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            FormattedInputForm(
              ifPassword: false,
              hintText: 'Email',
              label: 'Email',
              validator: emailValidator,
              kinputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            FormattedInputForm(
              hintText: 'password',
              ifPassword: true,
              label: 'password',
              validator: passwordValidator,
              kinputType: TextInputType.visiblePassword,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    child: Text('forgotten passowrd?'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Buttons(
                    text: 'Login',
                    onPress: () {
                      Navigator.pushNamed((context), ProfileScreen.id);
                      if (_formKey.currentState.validate()) {
                        print("Validated");
                      } else {
                        print("Not Validated");
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
