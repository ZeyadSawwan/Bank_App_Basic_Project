import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_tabbar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/utility_bills_screen/cards_widget.dart';
import 'package:flutter_application_1/screens/utility_bills_screen/utility_bills_bloc.dart';

class UtilityBillsScreen extends StatefulWidget {
  @override
  State<UtilityBillsScreen> createState() => _UtilityBillsScreenState();
}

class _UtilityBillsScreenState extends State<UtilityBillsScreen> {
  var Shared = SharedWidget();
  var bloc = UtilityBillsBloc();
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: tabBar(
                tabBarTitleOne: "PENDING",
                tabBarTitleTwo: "SUBSCRIPTIONS",
                forleading: Container(),
                onTap: () {
                  setState(() {
                    bloc.tapped = !bloc.tapped;
                  });
                },
                title: "utility bills"),
            body: Stack(
              children: [
                Shared.backgroundImage(context, sigmaX: 2, sigmaY: 2),
                TabBarView(
                  children: [
                    Row(
                      children: <Widget>[
                        bloc.tapped ? DrawerScreen() : Container(),
                        Expanded(
                          child: SizedBox(
                            height: double.infinity,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: [
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          CardsWidget(
                                            heightForCard: 0.17,
                                            heightForButton: 0.334,
                                            iconForCards:
                                                "Assets/images/Electric_Logo.png",
                                            gradient: const LinearGradient(
                                              colors: [
                                                Colors.white,
                                                Colors.white
                                              ],
                                            ),
                                            name: "Electricity Bill",
                                            price: "\$ 176.99",
                                          ),
                                          CardsWidget(
                                            heightForCard: 0.05,
                                            heightForButton: 0.14,
                                            iconForCards:
                                                "Assets/images/Water_Logo.png",
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffff984a),
                                                Color(0xffec5656)
                                              ],
                                            ),
                                            name: "     Water  Bill",
                                            price: "  \$ 48.43",
                                          ),
                                          CardsWidget(
                                            heightForCard: 0.05,
                                            heightForButton: 0.14,
                                            iconForCards:
                                                "Assets/images/TV_Logo.png",
                                            gradient: const LinearGradient(
                                              colors: [
                                                Colors.white,
                                                Colors.white
                                              ],
                                            ),
                                            name: "TV Subscribe",
                                            price: "\$ 29.99",
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                    Container()
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
