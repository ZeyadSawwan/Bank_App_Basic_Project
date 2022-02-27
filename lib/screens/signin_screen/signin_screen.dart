import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/First_screen/First_screen.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_application_1/screens/signin_screen/signin_bloc.dart';

class SgininScreen extends StatefulWidget {
  State<SgininScreen> createState() => SgininScreenState();
}

class SgininScreenState extends State<SgininScreen> {
  final Shared = SharedWidget();
  var bloc = SigninBloc();

  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(children: [
            Shared.backgroundImage(context, sigmaX: 3, sigmaY: 3),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 24),
                    child: Shared.mainAppImage(
                        color: Colors.white, scaleForImages: 2),
                  ),
                  LoginBox()
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class LoginBox extends StatefulWidget {
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  var bloc = SigninBloc();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Form(
      key: bloc.formKey,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27), color: Colors.white),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.51,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color(0xff777879),
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.23),
                  IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => FirstScreen()),
                          ),
                        );
                      },
                      icon: const Icon(Icons.cancel))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: TextFormField(
                  validator:
                      RequiredValidator(errorText: "Please enter your Bank ID"),
                  onFieldSubmitted: (value) => passwordController,
                  onTap: () {},
                  controller: userNameController,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 133, 134, 134), fontSize: 16),
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff707273),
                      ),
                    ),
                    labelText: "ID",
                    hintStyle: TextStyle(
                        color: Color(0xff707273),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    hintText: "Enter your bank ID",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  validator: MultiValidator(
                    [
                      MaxLengthValidator(16,
                          errorText:
                              "Password can`t be more than 16 characters"),
                      RequiredValidator(errorText: "Password is required"),
                      MinLengthValidator(6,
                          errorText: "Password must be at least 6 characters"),
                    ],
                  ),
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 133, 134, 134), fontSize: 14),
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff707273),
                      ),
                    ),
                    labelText: "PASSWORD",
                    hintStyle: TextStyle(
                        color: Color(0xff707273),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    hintText: "********",
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      bloc.checkBoxForRememberID = !bloc.checkBoxForRememberID;
                      setState(() {});
                    },
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        bloc.checkBoxForRememberID
                            ? "Assets/images/CheckBoxTrue.png"
                            : "Assets/images/CheckBoxFalse.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.028),
                  const Text(
                    "Remember my ID for future logins.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 122, 124, 126),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      bloc.checkBoxForFingerPrint =
                          !bloc.checkBoxForFingerPrint;
                      setState(() {});
                    },
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        bloc.checkBoxForFingerPrint
                            ? "Assets/images/CheckBoxTrue.png"
                            : "Assets/images/CheckBoxFalse.png",
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.028),
                  const Text(
                    "Use fingerprint recognition next time",
                    style: TextStyle(
                      color: Color.fromARGB(255, 122, 124, 126),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.022,
              ),
              SharedButton(
                  widget: const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(160, 0, 119, 166),
                    Color(0xff16cff3)
                  ]),
                  textColor: Color(0xffffffff),
                  text: "Sign in",
                  onTap: () {
                    if (bloc.formKey.currentState!.validate()) {
                      bloc.singWithFingerPrint(context);
                    }
                  },
                  buttonHeight: 38,
                  buttonWidth: 306)
            ],
          ),
        ),
      ),
    );
  }
}
