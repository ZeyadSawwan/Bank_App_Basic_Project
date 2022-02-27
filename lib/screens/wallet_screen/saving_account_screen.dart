import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/more_messages/view_more_messages.dart';

class SavingAccountScreen extends StatelessWidget {
  const SavingAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        const Text(
                          "Availible Balance",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffaeb1b3),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                            ),
                            const Icon(
                              Icons.circle,
                              color: Color(0xff1acdf0),
                              size: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            const Text(
                              "\$ 4,543.87",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff707273),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height * 0.34,
                    width: MediaQuery.of(context).size.width * 0.92),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27),
                    ),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("Assets/images/clock.png"),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.018),
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
                      HistoryList2(
                        context,
                        "29 Sep. 17",
                        "Salary DDX Office",
                        "\$ 5045.99",
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList2(
                        context,
                        "29 Sep. 17",
                        "Office Depot Refund",
                        "\$ 76.45",
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList2(
                        context,
                        "26 Sep. 17",
                        "Car Payment",
                        "\$ 499.99",
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList2(
                        context,
                        "24 Sep. 17",
                        "Cash Desk Deposit",
                        "\$ 300.00",
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.037),
                      SharedButton(
                          widget: Container(),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(160, 0, 119, 166),
                            Color(0xff16cff3)
                          ]),
                          textColor: const Color(0xffffffff),
                          text: "View Transactions",
                          onTap: () {},
                          buttonHeight: 38,
                          buttonWidth: 306),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.21,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "Assets/images/Saving_Card.png",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget HistoryList2(
  BuildContext context,
  String date,
  String name,
  String price,
) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      top: 10,
    ),
    child: Row(
      children: [
        Text(
          date,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Color(0xff707273),
              fontSize: 11,
              fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color(0xffaeb1b3),
              fontSize: 13,
              fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            price,
            textAlign: TextAlign.right,
            style: const TextStyle(
                color: Color(0xff707273),
                fontSize: 11,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
  );
}
