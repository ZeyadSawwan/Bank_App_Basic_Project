import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/First_screen/First_screen.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/branches_screen/branches_screen.dart';
import 'package:flutter_application_1/screens/dashboard_screen/dashboard_bloc.dart';
import 'package:flutter_application_1/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter_application_1/screens/funds_transfer_screen/funds_transfer_screen.dart';
import 'package:flutter_application_1/screens/services_screen/services_screen.dart';

import 'package:flutter_application_1/screens/utility_bills_screen/utility_bills_screen.dart';
import 'package:flutter_application_1/screens/more_messages/view_more_messages.dart';
import 'package:flutter_application_1/screens/wallet_screen/wallet_screen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

var bloc = DashBoardBloc();

class _DrawerScreenState extends State<DrawerScreen> {
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              const SizedBox(width: 16),
              Container(
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
              const SizedBox(width: 16),
              Column(
                children: const [
                  Text(
                    "Hello John Doe!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "john.doe@gmail.com",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: ListView(children: [
                        BuildMenuItem(
                            text: "DashBoard",
                            image: "Assets/images/dashboard22.png",
                            onClicked: () {
                              selectedItem(context, 0);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Wallet",
                            image: "Assets/images/wallet22.png",
                            onClicked: () {
                              selectedItem(
                                context,
                                1,
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Messages",
                            image: "Assets/images/messages22.png",
                            onClicked: () {
                              selectedItem(
                                context,
                                2,
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Utility Bills",
                            image: "Assets/images/bills22.png",
                            onClicked: () {
                              selectedItem(context, 3);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Funds Transfer",
                            image: "Assets/images/funds22.png",
                            onClicked: () {
                              selectedItem(context, 4);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Branches",
                            image: "Assets/images/branches1.png",
                            onClicked: () {
                              selectedItem(context, 5);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Settings",
                            image: "Assets/images/settings22.png",
                            onClicked: () {
                              selectedItem(context, 6);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BuildMenuItem(
                            text: "Contact",
                            image: "Assets/images/contact22.png",
                            onClicked: () {}),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                    ),
                  ),
                  SharedButton(
                      buttonWidth: 205,
                      buttonHeight: 34,
                      text: "Log out",
                      widget: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      textColor: Colors.white,
                      gradient: const LinearGradient(
                          colors: [Color(0xff0078a6), Color(0xff16cff3)]),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstScreen()));
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DashBoardScreen(),
          ),
        );

        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WalletScreen(),
          ),
        );

        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewMoreMessages(),
          ),
        );
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UtilityBillsScreen(),
            ));

        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FundsTransferScreen(),
            ));
        break;
      case 5:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) => BranchesScreen()),
          ),
        );
        break;
      case 6:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServicesScreen(),
            ));
        break;
      case 7:
        break;
    }
  }

  Widget BuildMenuItem({
    required String text,
    required String image,
    required VoidCallback onClicked,
  }) {
    final color = Color(0xffaeb1b3);
    final hoverColor = Colors.blue;
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        text,
        style: const TextStyle(
            color: Color(0xffaeb1b3),
            fontWeight: FontWeight.w400,
            fontSize: 14),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
