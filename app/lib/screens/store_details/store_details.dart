import 'package:app/main.dart';
import 'package:app/screens/store_details/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:app/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/body.dart';

String? title;

class StoreDetails extends StatelessWidget {
  static String routeName = "/store_details";
  // String title = prefs!.getString("businessName").toString();
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    // print(title);
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFF7643),
          ),
          child: CustomAppBar(title: 'Shop Name'),
        ),
      ),
      body: Body(),
    );
  }
}
