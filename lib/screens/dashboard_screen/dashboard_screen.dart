import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/listfortitles.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/dashboard_screen/dashboard_bloc.dart';
import 'package:flutter_application_1/screens/more_messages/view_more_messages.dart';
import 'package:flutter_application_1/Utils/shared_appbar.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final Shared = SharedWidget();
  var bloc = DashBoardBloc();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: myAppBar(
            forleading: Container(),
            onTap: () {
              setState(() {
                bloc.tap = !bloc.tap;
              });
            },
            title: "dashboard"),
        body: Stack(children: [
          Shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
          Row(children: [
            bloc.tap ? DrawerScreen() : Container(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08),
                        ContainerNum1(context),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        ContainerNum2(context),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        ContainerNum3(context),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}

Widget ContainerNum1(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.27,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.08,
          child: Container(
            width: MediaQuery.of(context).size.width - 32,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: const [
                SizedBox(height: 60),
                Text(
                  "Hello John Doe!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff777879),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Last Login: 10:33 AM, 28.09.2017",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffaeb1b3),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(118, 196, 194, 194),
                ),
                width: 100,
                height: 100,
                child: Image.asset(
                  "Assets/images/profile.png",
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ContainerNum2(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 32,
    height: MediaQuery.of(context).size.height * 0.18,
    padding: const EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff0a496a), Color(0xff2189bc)]),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "Bank Accounts",
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF85c3ec),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "2 Active Accounts",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Divider(
            color: Color(0xFF4DBEE0),
          ),
        ),
        Column(
          children: [
            const Text(
              "Accounting Balance",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF85c3ec),
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff1acdf0)),
                    width: 14,
                    height: 14,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "\$ 6,328.33",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget ContainerNum3(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    width: MediaQuery.of(context).size.width * 0.94,
    height: MediaQuery.of(context).size.height * 0.39,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
              child: Stack(
                alignment: Alignment.center,
                children: const [
                  Icon(
                    Icons.email_outlined,
                    color: Color(0xffaeb1b3),
                    size: 22,
                  ),
                  Positioned(
                    top: 1,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffec5656),
                      radius: 6,
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "Messages",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        TitleList(
          maintitle: "Remote Access Scam",
          subject:
              "The banking industry has seen an increase in customers and business receiving cold calls from ...",
          icon: const Icon(
            Icons.lock_open_outlined,
            color: Colors.white,
            size: 19,
          ),
        ),
        const Divider(),
        Stack(
          children: [
            TitleList(
              maintitle: "Where can i find my IBAN?",
              subject:
                  "The banking industry has seen an increase in customers and business receiving cold calls from ...",
              icon: const Icon(
                Icons.headphones,
                color: Colors.white,
                size: 20,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  SharedButton(
                      widget: Container(),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(160, 0, 119, 166),
                        Color(0xff16cff3)
                      ]),
                      textColor: const Color(0xffffffff),
                      text: "View More",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewMoreMessages()));
                      },
                      buttonHeight: 38,
                      buttonWidth: 306),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}
