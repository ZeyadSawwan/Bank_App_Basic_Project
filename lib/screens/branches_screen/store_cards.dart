import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';

class StoreCards extends StatefulWidget {
  double heightForBox;
  String storeName;
  String date;
  String streetName;
  String kilometer;
  String storeImage;
  double paddingForImage;
  StoreCards(
      {required this.heightForBox,
      required this.storeName,
      required this.date,
      required this.streetName,
      required this.kilometer,
      required this.storeImage,
      required this.paddingForImage});

  @override
  State<StoreCards> createState() => _StoreCardsState();
}

class _StoreCardsState extends State<StoreCards> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * widget.heightForBox,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.18,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: widget.paddingForImage),
                  child: Image.asset(widget.storeImage),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        widget.storeName,
                        style: const TextStyle(
                          color: Color(0xff707273),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.date,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xffaeb1b3),
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            "(Open Now)",
                            style: TextStyle(
                                color: Color.fromARGB(228, 68, 196, 255)),
                          )
                        ],
                      ),
                      Text(
                        widget.streetName,
                        style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xffaeb1b3),
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Container(
                              width: 41,
                              height: 22,
                              child: Center(
                                child: Text(
                                  widget.kilometer,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Color(0xffaeb1b3),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: const Color(0xfff0f0f0),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SharedButton(
                                widget: const Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                ),
                                gradient: const LinearGradient(colors: [
                                  Color(0xff0078a6),
                                  Color(0xff16cff3)
                                ]),
                                textColor: Colors.white,
                                text: "Get Direction",
                                onTap: () {},
                                buttonHeight: 30,
                                buttonWidth: 145),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
