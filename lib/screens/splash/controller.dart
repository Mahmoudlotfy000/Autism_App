import 'dart:async';
import 'package:autism_app/helper/methods.dart';
import 'package:autism_app/screens/create_profile/view.dart';


class SplashController
{
  void timer(context) {
    Timer(const Duration(seconds: 3), () {
      navigateTo(context: context, page: CreateProfileScreen());

    });

  }
}

