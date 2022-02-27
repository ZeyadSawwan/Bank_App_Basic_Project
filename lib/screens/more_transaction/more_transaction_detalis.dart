import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/Utils/shared_tabbar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/more_transaction/more_transaction_details_bloc.dart';

class MoreTransactionDetalis extends StatefulWidget {
  @override
  State<MoreTransactionDetalis> createState() => _MoreTransactionDetalisState();
}

class _MoreTransactionDetalisState extends State<MoreTransactionDetalis> {
  var Shared = SharedWidget();

  var bloc = MoreTransactionDetailsBloc();

  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: tabBar(
                onTap: () {
                  setState(() {
                    bloc.tap = !bloc.tap;
                  });
                },
                title: "wallet",
                forleading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                tabBarTitleOne: ("CREDIT CARD"),
                tabBarTitleTwo: "SAVING"),
            body: Stack(
              children: [
                Shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: MediaQuery.of(context).size.height * 0.67,
                        child: Column(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.018),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("Assets/images/clock.png"),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018),
                                const Text(
                                  "History of Transactions",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707273),
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: ListView.builder(
                                itemCount: bloc.listOfTransactionHistory.length,
                                itemBuilder: (context, idx) => Container(
                                  margin: const EdgeInsets.all(7),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const SizedBox(width: 18),
                                          Text(
                                            bloc.listOfTransactionHistory[idx]
                                                .date,
                                            style: const TextStyle(
                                                fontSize: 11,
                                                color: Color(0xff707273)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            bloc.listOfTransactionHistory[idx]
                                                .brand,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffaeb1b3)),
                                          ),
                                          const Spacer(),
                                          Text(
                                            bloc.listOfTransactionHistory[idx]
                                                .currency,
                                            style: const TextStyle(
                                                color: Color(0xff707273),
                                                fontSize: 13),
                                          ),
                                          Text(
                                            bloc.listOfTransactionHistory[idx]
                                                .price
                                                .toString(),
                                            style: const TextStyle(
                                                color: Color(0xff707273),
                                                fontSize: 13),
                                          ),
                                          const SizedBox(width: 6),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 16, right: 16),
                                        child: Divider(
                                          thickness: 1,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset("Assets/images/line.png"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.83),
                    Align(
                      alignment: Alignment.center,
                      child: SharedButton(
                          widget: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(),
                          ),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(160, 0, 119, 166),
                            Color(0xff16cff3)
                          ]),
                          textColor: const Color(0xffffffff),
                          text: "More Details",
                          onTap: () {},
                          buttonHeight: 38,
                          buttonWidth: 306),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 74, right: 30),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Material(
                          elevation: 10,
                          child: Container(
                            width: 80,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: const [
                                  Text(
                                    "\$ 4,543.87",
                                    style: TextStyle(color: Color(0xff707273)),
                                  ),
                                  Text(
                                    "29 Sep. 17",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromARGB(255, 125, 128, 129)),
                                  )
                                ],
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          ),
        ),
      );
}
