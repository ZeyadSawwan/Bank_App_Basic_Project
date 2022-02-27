import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/signin_screen/signin_screen.dart';

class FirstScreen extends StatelessWidget {
  final Shared = SharedWidget();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("Assets/images/Bank_Logo.png"),
                    const SizedBox(
                      height: 170,
                    ),
                    SharedButton(
                      widget: Container(),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(132, 255, 255, 255),
                        Color(0xFFffffff)
                      ]),
                      textColor: const Color(0xff156fb2),
                      text: "Sign in with your account",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SgininScreen()),
                        );
                      },
                      buttonHeight: 48,
                      buttonWidth: 284,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SharedButton(
                      widget: Container(),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(129, 10, 72, 106),
                        Color.fromARGB(255, 33, 136, 188)
                      ]),
                      textColor: Colors.white,
                      text: "Open an Account",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SgininScreen()),
                        );
                      },
                      buttonHeight: 48,
                      buttonWidth: 284,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
