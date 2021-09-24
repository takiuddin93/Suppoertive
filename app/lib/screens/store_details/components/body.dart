import 'package:app/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(64),
              ),
              Container(
                height: 158,
                decoration: BoxDecoration(
                  color: Color(0xFFE9E9E9),
                  border: Border.all(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    SizedBox(
                      height: getProportionateScreenHeight(16),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Share link',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Share link on social media or text it to your friends/customers',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              'Share link on social media or text it to your friends/customers',
                              style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 3,
                            child: DefaultButton(
                              text: "Share",
                              press: () {
                                Share.share(
                                    'https://www.buymeacoffee.com/takiuddin93');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              Container(
                height: 158,
                decoration: BoxDecoration(
                  color: Color(0xFFE9E9E9),
                  border: Border.all(color: Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    SizedBox(
                      height: getProportionateScreenHeight(16),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Share link',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Share link on social media or text it to your friends/customers',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              'Share link on social media or text it to your friends/customers',
                              style: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 3,
                            child: DefaultButton(
                              text: "Share",
                              press: () {
                                Share.share(
                                    'https://www.buymeacoffee.com/takiuddin93');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
