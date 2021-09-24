import 'package:app/components/default_button.dart';
import 'package:app/screens/store_details/store_details.dart';
import 'package:flutter/material.dart';
import 'package:app/constants.dart';
import 'package:app/size_config.dart';
import 'package:permission_handler/permission_handler.dart';

class Body extends StatelessWidget {
  Future<void> _askPermissions(BuildContext context) async {
    PermissionStatus permissionStatus = await _getContactPermission();
    if (permissionStatus == PermissionStatus.granted) {
      Navigator.pushNamed(context, StoreDetails.routeName);
    } else {
      _handleInvalidPermissions(permissionStatus);
    }
  }

  Future<PermissionStatus> _getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    } else {
      return permission;
    }
  }

  void _handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      final snackBar = SnackBar(content: Text('Access to contact data denied'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      final snackBar =
          SnackBar(content: Text('Contact data not available on device'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.2),
              Text(
                "Store successfully created",
                style: headingStyle,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "We offer quick modes to help you share store link, catalogs, products, etc. Which requires your permission to access the contacts",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.4),
              DefaultButton(
                text: "Continue",
                press: () => _askPermissions(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
