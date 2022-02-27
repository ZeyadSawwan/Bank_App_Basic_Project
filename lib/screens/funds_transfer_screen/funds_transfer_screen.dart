import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_appbar.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/funds_transfer_screen/funds_transfer_bloc.dart';

class FundsTransferScreen extends StatefulWidget {
  @override
  State<FundsTransferScreen> createState() => _FundsTransferScreenState();
}

class _FundsTransferScreenState extends State<FundsTransferScreen> {
  var shared = SharedWidget();
  var bloc = FundsTransferBloc();
  @override
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
            title: "funds transfer",
            forleading: Container()),
        body: Stack(
          children: [
            shared.backgroundImage(context, sigmaX: 6, sigmaY: 6),
            Row(
              children: [
                bloc.tap ? DrawerScreen() : Container(),
                Expanded(
                    child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 16),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 160,
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 98,
                                      height: 226,
                                      child: Image.asset(
                                          "Assets/images/shape.png")),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 90,
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      width: 200,
                                      height: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12, top: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                "Money Limit",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color(0xffAEB1B3)),
                                              ),
                                              Text(
                                                "\$ " +
                                                    bloc.value
                                                        .toStringAsFixed(0),
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xffAEB1B3)),
                                              ),
                                              Slider(
                                                activeColor: Color(0xff149BB5),
                                                inactiveColor:
                                                    Color(0xffAEB1B3),
                                                thumbColor: Colors.white,
                                                divisions: 10,
                                                min: 0,
                                                max: 5000,
                                                value: bloc.value,
                                                onChanged: (newvalue) {
                                                  setState(() {
                                                    bloc.value = newvalue;
                                                  });
                                                },
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *
                                      0.195,
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 14),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "Assets/images/profile.png",
                                            scale: 1.3,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "SENDER",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffAEB1B3)),
                                              ),
                                              Text(
                                                "Johnes Patric Doel",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff707273)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 22,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            elevation: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  color: Colors.white),
                                              width: 90,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24)),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      "Manage",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffAEB1B3),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 14),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              elevation: 5,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                    color: Colors.white),
                                                width: 97,
                                                height: 40,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                              "Assets/images/usa_flag.png"),
                                                          const SizedBox(
                                                            width: 5,
                                                          ),
                                                          const Text(
                                                            "USD",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffAEB1B3),
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 14,
                                            ),
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              elevation: 5,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                    color: Colors.white),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.55,
                                                height: 40,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24)),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                              "Assets/images/credit_small_logo.png"),
                                                          const SizedBox(
                                                            width: 5,
                                                          ),
                                                          const Text(
                                                            "Credit Card **56",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffAEB1B3),
                                                                fontSize: 15),
                                                          ),
                                                          Container(
                                                            width: 15,
                                                            height: 40,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                Icons
                                                                    .expand_more,
                                                                color: Color(
                                                                    0xff707273),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 175,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *
                                      0.195,
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 14),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "Assets/images/Profile9.png",
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "RECEPIENT",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color(0xffEC5656)),
                                              ),
                                              Text(
                                                "Ana Jane Roe",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff707273)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            elevation: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  color: Colors.white),
                                              width: 90,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24)),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      "Manage",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffAEB1B3),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 14),
                                      child: Container(
                                        child: Row(children: [
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            elevation: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  color: Colors.white),
                                              width: 97,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24)),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            "Assets/images/euro_flag.png"),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        const Text(
                                                          "EUR",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffAEB1B3),
                                                              fontSize: 15),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 14,
                                          ),
                                          Material(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            elevation: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  gradient:
                                                      const LinearGradient(
                                                          colors: [
                                                        Color(0xffEC5656),
                                                        Color(0xffFF984A),
                                                      ])),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.55,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.transparent,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24)),
                                                ),
                                                child: const Text(
                                                  "Transfer",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.white,
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *
                                      0.195,
                                  child: Column(children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8, top: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "Assets/images/clock.png"),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            const Text(
                                              "Recent Transfers",
                                              style: TextStyle(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 26, right: 26, top: 8),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "Assets/images/Profile7.png",
                                            scale: 0.85,
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "17 Sep. 17",
                                            style: TextStyle(
                                                color: Color(0xff95989A),
                                                fontSize: 12),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "Maryan Johans Kl...",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xffAEB1B3)),
                                          ),
                                          const Spacer(),
                                          const Text("\$ 100.0",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 16, right: 16, top: 1),
                                      child: Divider(
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 26, right: 26, top: 8),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "Assets/images/Profile5.png",
                                            scale: 0.85,
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "15 Aug. 17",
                                            style: TextStyle(
                                                color: Color(0xff95989A),
                                                fontSize: 12),
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "Vanessa Sinkly Da...",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xffAEB1B3)),
                                          ),
                                          const Spacer(),
                                          const Text("\$ 50.0",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
