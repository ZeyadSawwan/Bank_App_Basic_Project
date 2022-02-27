import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_appbar.dart';
import 'package:flutter_application_1/Utils/shared_slidebar.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/screens/branches_screen/branches_bloc.dart';
import 'package:flutter_application_1/screens/branches_screen/store_cards.dart';

class BranchesScreen extends StatefulWidget {
  State<BranchesScreen> createState() => _BranchesScreenState();
}

class _BranchesScreenState extends State<BranchesScreen> {
  var bloc = BranchesBloc();
  var shared = SharedWidget();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: myAppBar(
            forleading: Container(),
            onTap: () {
              setState(() {
                bloc.tap = !bloc.tap;
              });
            },
            title: "branch"),
        body: Stack(children: [
          shared.backgroundImage(context, sigmaX: 1, sigmaY: 1),
          Row(children: [
            bloc.tap ? DrawerScreen() : Container(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Image.asset(
                            'Assets/images/map.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            //236
                            top: MediaQuery.of(context).size.height * 0.373,
                            left: MediaQuery.of(context).size.width * 0.553,
                            child: Image.asset("Assets/images/Dot_For_Map.png"),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.3,
                            left: MediaQuery.of(context).size.width * 0.413,
                            child:
                                Image.asset("Assets/images/location_mark.png"),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.154,
                              left: MediaQuery.of(context).size.width * 0.87,
                              child:
                                  Image.asset("Assets/images/Dot_For_Map.png")),
                          Column(
                            children: [
                              StoreCards(
                                kilometer: "3.2 Km",
                                streetName: "2330 W Oregon Ave",
                                storeName: "Quartermaster Plaza",
                                heightForBox: 0.5,
                                date: "8:00 AM - 04:30 PM ",
                                storeImage: "Assets/images/Store1.png",
                                paddingForImage: 0,
                              ),
                              StoreCards(
                                heightForBox: 0.02,
                                storeName: "10th and Chestnut",
                                date: "9:00 AM - 05:00 PM ",
                                streetName: "932 Chestnut St",
                                kilometer: "5.4 Km",
                                storeImage: "Assets/images/Store2.png",
                                paddingForImage: 34,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
