import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/more_transaction/more_transaction_detalis.dart';

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
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
                            "\$ 1,448.00",
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
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.92,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27),
                    ),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.018),
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
                      HistoryList(context, "29 Sep. 17", "ZARA Mall Sof...",
                          "\$ 49.99", "Assets/images/Zara_Logo.png"),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList(context, "28 Sep. 17", "REWE N23 Sof...",
                          "\$ 76.45", "Assets/images/REWE_Logo.png"),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList(context, "27 Sep. 17", "Nike Town Sof...",
                          "\$ 109.99", "Assets/images/Nike_Logo.png"),
                      const Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      HistoryList(context, "27 Sep. 17", "Carrefour Sofia...",
                          "\$ 15.33", "Assets/images/Carrefour_Logo.png"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SharedButton(
                          widget: Container(),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(160, 0, 119, 166),
                            Color(0xff16cff3)
                          ]),
                          textColor: const Color(0xffffffff),
                          text: "View Transactions",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MoreTransactionDetalis()),
                            );
                          },
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
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 200,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        "Assets/images/Credit_Card.png",
                        scale: 1.11,
                      ),
                      Image.asset(
                        "Assets/images/visa_card.png",
                        scale: 0.94,
                      ),
                      Image.asset("Assets/images/Credit_Card.png", scale: 1.11),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget HistoryList(
    BuildContext context, String date, String name, String price, String icon) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      top: 1,
    ),
    child: Row(
      children: [
        Image.asset(icon),
        const Spacer(),
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
