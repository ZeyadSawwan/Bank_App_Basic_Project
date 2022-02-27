import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/screens/utility_bills_screen/utility_bills_bloc.dart';
import 'package:flutter_application_1/screens/utility_bills_screen/utility_bills_screen.dart';

class CardsWidget extends StatefulWidget {
  double heightForCard;
  double heightForButton;
  String iconForCards;
  Gradient gradient;
  String name;
  String price;

  CardsWidget({
    required this.heightForButton,
    required this.heightForCard,
    required this.iconForCards,
    required this.gradient,
    required this.name,
    required this.price,
  });

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

bool switchValue = true;
double hight = 130;

class _CardsWidgetState extends State<CardsWidget> {
  var bloc = UtilityBillsBloc();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
                height:
                    MediaQuery.of(context).size.height * widget.heightForCard),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  height: hight,
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(widget.iconForCards),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              children: [
                                Text(
                                  widget.name,
                                  style: const TextStyle(
                                    color: Color(0xff707273),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.001),
                                Text(
                                  widget.price,
                                  style: const TextStyle(
                                    color: Color(0xffec5656),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(24),
                              elevation: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: widget.gradient,
                                    borderRadius: BorderRadius.circular(24)),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                  ),
                                  //Color(0xffaeb1b3),
                                  onPressed: () {},
                                  child: const Text(
                                    "pay",
                                    style: TextStyle(
                                      color: Color(0xffaeb1b3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: hight == 280
                            ? Container()
                            : SharedButton(
                                gradient: const LinearGradient(colors: [
                                  Color(0xff0078a6),
                                  Color(0xff16cff3)
                                ]),
                                textColor: Colors.white,
                                widget: Icon(Icons.keyboard_arrow_down),
                                text: "Details",
                                onTap: () {
                                  if (hight == 130) {
                                    hight = 280;
                                  } else if (hight == 280) {
                                    hight = 130;
                                  }
                                  setState(() {});
                                },
                                buttonHeight: 38,
                                buttonWidth: 306),
                      ),
                      hight == 130
                          ? Container()
                          : Padding(
                              padding:
                                  const EdgeInsets.only(left: 18, right: 18),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4, bottom: 4),
                                    child: Divider(
                                      thickness: 2,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "Process Date",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontSize: 14),
                                      ),
                                      Expanded(child: Container()),
                                      const Text(
                                        "Wed, Nov. 03, 2017",
                                        style: TextStyle(
                                            color: Color(0xffEC5656),
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4, bottom: 4),
                                    child: Divider(
                                      thickness: 2,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "Payment Method",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontSize: 14),
                                      ),
                                      Expanded(child: Container()),
                                      const Text(
                                        "Master Card  **** 3456",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontSize: 10),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Image.asset(
                                            "Assets/images/small_visa.png"),
                                      ),
                                      const Icon(
                                        Icons.expand_more,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Divider(
                                      thickness: 2,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "Autopay",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontSize: 14),
                                      ),
                                      Expanded(child: Container()),
                                      CupertinoSwitch(
                                        value: switchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            switchValue = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  hight == 130
                                      ? Container()
                                      : SharedButton(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff0078a6),
                                                Color(0xff16cff3)
                                              ]),
                                          textColor: Colors.white,
                                          widget: Icon(Icons.keyboard_arrow_up),
                                          text: "Less Details",
                                          onTap: () {
                                            if (hight == 130) {
                                              hight = 280;
                                            } else if (hight == 280) {
                                              hight = 130;
                                            }
                                            setState(() {});
                                          },
                                          buttonHeight: 38,
                                          buttonWidth: 306),
                                ],
                              ),
                            )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
