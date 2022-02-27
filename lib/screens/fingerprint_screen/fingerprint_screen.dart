import 'package:flutter_application_1/Utils/shared_button.dart';
import "fingerprint_bloc.dart";
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter_application_1/screens/fingerprint_screen/fingerprint_bloc.dart';

class FingerPrint extends StatelessWidget {
  final Shared = SharedWidget();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Shared.backgroundImage(context, sigmaX: 6, sigmaY: 6),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Start Using Your ",
                  style: TextStyle(
                      color: Color(0xff2189bc),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Fingerprint",
                  style: TextStyle(
                      color: Color(0xff2189bc),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.044,
                ),
                InkWell(
                  onTap: () async {
                    final isAuthenticated = await LocalAuthApi.authenticate();
                    if (isAuthenticated)
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => DashBoardScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    width: 198,
                    height: 198,
                    child: Image.asset(
                      "Assets/images/FingerPrint.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                SharedButton(
                    widget: Container(),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(160, 0, 119, 166),
                      Color(0xff16cff3)
                    ]),
                    textColor: Color(0xffffffff),
                    text: "Not Now",
                    onTap: () {
                      Navigator.pop(context);
                    },
                    buttonHeight: 38,
                    buttonWidth: 306),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
