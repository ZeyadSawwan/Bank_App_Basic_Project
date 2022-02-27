import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter_application_1/screens/fingerprint_screen/fingerprint_screen.dart';

class SigninBloc {
  var checkBoxForRememberID = false;
  var checkBoxForFingerPrint = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void singWithFingerPrint(BuildContext context) {
    checkBoxForFingerPrint == true
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FingerPrint(),
            ),
          )
        : Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DashBoardScreen(),
            ),
          );
  }
}
