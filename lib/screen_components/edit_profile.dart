import 'package:flutter/material.dart';

import '../components.dart';

class EditProfile extends StatelessWidget {
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
                  'Edit Your Preference',
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
                    if (value.isEmpty || value < 5 || value > 20) {
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
                    if (value.isEmpty || value < 5 || value > 20) {
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
                    if (value.isEmpty || value < 5 || value > 20) {
                      return 'put a valid Company Name';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'Company Name',
                  label: 'Company Name',
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
                  hintText: 'Company Number',
                  label: 'Company Number',
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
                  hintText: 'Company Size',
                  label: 'Company Size',
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
