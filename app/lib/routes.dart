import 'package:flutter/widgets.dart';
import 'package:app/screens/splash/splash_screen.dart';
import 'package:app/screens/sign_up/sign_up_screen.dart';
import 'package:app/screens/otp/otp_screen.dart';
import 'package:app/screens/complete_profile/complete_profile_screen.dart';
import 'package:app/screens/store_success/store_success.dart';
import 'package:app/screens/store_details/store_details.dart';

// import 'package:app/screens/cart/cart_screen.dart';
// import 'package:app/screens/details/details_screen.dart';
// import 'package:app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:app/screens/home/home_screen.dart';
// import 'package:app/screens/login_success/login_success_screen.dart';
// import 'package:app/screens/profile/profile_screen.dart';
// import 'package:app/screens/sign_in/sign_in_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  StoreSuccess.routeName: (context) => StoreSuccess(),
  StoreDetails.routeName: (context) => StoreDetails(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
