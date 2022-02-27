import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_appbar.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_tabbar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';

import 'package:flutter_application_1/screens/wallet_screen/credit_card_screen.dart';
import 'package:flutter_application_1/screens/wallet_screen/saving_account_screen.dart';
import 'package:flutter_application_1/screens/wallet_screen/wallet_bloc.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var Shared = SharedWidget();
  var bloc = WalletBloc();
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: tabBar(
                tabBarTitleOne: "CREDIT CARD",
                tabBarTitleTwo: "SAVING",
                forleading: Container(),
                onTap: () {
                  setState(() {
                    bloc.tapped = !bloc.tapped;
                  });
                },
                title: "wallet"),
            body: Stack(
              children: [
                Shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
                TabBarView(
                  children: [
                    Row(
                      children: [
                        bloc.tapped ? DrawerScreen() : Container(),
                        Expanded(
                          child: SizedBox(
                            height: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [CreditCardScreen()],
                            ),
                          ),
                        )
                      ],
                    ),
                    SavingAccountScreen()
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
