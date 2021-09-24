import 'package:app/screens/store_success/store_success.dart';
import 'package:flutter/material.dart';
import 'package:app/components/custom_surfix_icon.dart';
import 'package:app/components/default_button.dart';
import 'package:app/components/form_error.dart';
import 'package:app/screens/otp/otp_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String businessName;
  late String countryName;
  late String address;

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildBusinessNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildCountryNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Finish",
            press: () async {
              if (_formKey.currentState!.validate()) {
                Future<SharedPreferences> _prefs =
                    SharedPreferences.getInstance();
                SharedPreferences prefs = await _prefs;
                prefs.setString("businessName", businessName);
                prefs.setString("countryName", countryName);
                prefs.setString("address", address);
                print("Saved " + prefs.getString("businessName").toString());
                print("Saved " + prefs.getString("countryName").toString());
                print("Saved " + prefs.getString("address").toString());
                // Navigator.pushNamed(context, OtpScreen.routeName);
                Navigator.pushNamed(context, StoreSuccess.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildBusinessNameFormField() {
    return TextFormField(
      onSaved: (newValue) {
        // businessName = newValue!;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }

        businessName = value;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Business Name",
        hintText: "Enter your shop/business name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildCountryNameFormField() {
    return TextFormField(
      onSaved: (newValue) {},
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCountryNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kCountryNullError);
          return "";
        }
        countryName = value;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Country",
        hintText: "Enter your country name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) {},
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        address = value;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your shop/business address",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
