import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Function onPress;

  Buttons({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pinkAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: GestureDetector(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: GoogleFonts.rationale(
                fontSize: 20,
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'passwords must have at least one special character')
]);

final emailValidator = MultiValidator([
  RequiredValidator(errorText: "Email Required"),
  EmailValidator(errorText: "Enter valid email id"),
]);

class FormattedInputForm extends StatelessWidget {
  final String hintText;
  final String label;
  final Function validator;
  final TextInputType kinputType;
  final bool ifPassword;
  final Function onChanged;

  FormattedInputForm(
      {this.hintText,
      this.label,
      this.validator,
      this.kinputType,
      this.ifPassword,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        obscureText: ifPassword,
        style: GoogleFonts.rationale(fontSize: 20, color: Colors.black),
        keyboardType: kinputType,
        decoration: InputDecoration(
            labelStyle: GoogleFonts.rationale(color: Colors.black87),
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            focusColor: Colors.white24,
            fillColor: Color(0xffD3CDCD),
            filled: true,
            border: OutlineInputBorder(),
            labelText: label,
            hintText: hintText),
        validator: validator);
  }
}

var infoFont = GoogleFonts.concertOne(
  fontSize: 20,
);

var bigFont = GoogleFonts.rationale(fontSize: 20, fontWeight: FontWeight.bold);
var smallFont =
    GoogleFonts.rationale(fontSize: 15, fontWeight: FontWeight.normal);
