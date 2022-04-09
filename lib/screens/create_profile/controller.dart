import 'dart:async';
import 'package:autism_app/helper/methods.dart';
import 'package:autism_app/screens/test/enter_page/view.dart';


class CreateProfileController
{
  void timer(context) {
    Timer(const Duration(seconds: 4), () {
      navigateTo(context: context, page: Enter_Page());

    });

  }
}
