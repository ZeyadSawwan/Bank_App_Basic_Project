import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_appbar.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';

import 'package:flutter_application_1/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter_application_1/screens/more_messages/view_more_messages_bloc.dart';

class ViewMoreMessages extends StatefulWidget {
  @override
  State<ViewMoreMessages> createState() => _ViewMoreMessagesState();
}

class _ViewMoreMessagesState extends State<ViewMoreMessages> {
  var Shared = SharedWidget();

  var bloc = ViewMoreMessagesBloc();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: myAppBar(
            onTap: () {
              setState(() {
                bloc.tap = !bloc.tap;
              });
            },
            title: "Messages",
            forleading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashBoardScreen(),
                      ));
                },
                icon: const Icon(Icons.arrow_back))),
        body: Stack(
          children: [
            Shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
            Row(
              children: [
                bloc.tap ? DrawerScreen() : Container(),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ContainerForTheList(context),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget ContainerForTheList(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 16.0,
      right: 16,
    ),
    child: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width * 0.92,
          height: MediaQuery.of(context).size.height * 0.82,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.018),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.mark_email_unread,
                    color: Color(0xffaeb1b3),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.018),
                  const Text("Messages"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffec5656),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: MediaQuery.of(context).size.width * 0.07,
                      height: MediaQuery.of(context).size.height * 0.037,
                      child: const Icon(
                        Icons.lock,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    const Text("Remote Access Scam"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "The banking industry has seen an increase in ",
                      style: TextStyle(
                          color: Color(0xff95989a),
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "customers and businesses receiving cold calls from...",
                      style: TextStyle(
                          color: Color(0xff95989a),
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          right: 26,
                        ),
                        child: Divider(
                          thickness: 2,
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffec5656),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: MediaQuery.of(context).size.width * 0.07,
                      height: MediaQuery.of(context).size.height * 0.037,
                      child: const Icon(
                        Icons.headset,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    const Text("Where can I find my IBAN?"),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Can find your IBAN and BIC, on your account on",
                    style: TextStyle(
                        color: Color(0xff95989a),
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Online Banking or your account statement...",
                    style: TextStyle(
                        color: Color(0xff95989a),
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
