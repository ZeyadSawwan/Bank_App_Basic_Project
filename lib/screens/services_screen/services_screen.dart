import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/shared_button.dart';
import 'package:flutter_application_1/Utils/shared_widget.dart';
import 'package:flutter_application_1/models/services.dart';
import 'package:flutter_application_1/screens/services_screen/services_bloc.dart';

class ServicesScreen extends StatelessWidget {
  var shared = SharedWidget();
  var bloc = ServicesBloc();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset("Assets/images/bank_logo2.png"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            shared.backgroundImage(context, sigmaX: 0, sigmaY: 0),
            Stack(
              children: [
                SearchBar(context),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Expanded(
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: bloc.listOfServices.length,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return Card(bloc.listOfServices[index]);
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget SearchBar(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.width * 0.2,
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(90, 255, 255, 255),
            ),
            width: 170,
            height: 40,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Serach",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget Card(ServicesModel item) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 8,
        ),
        child: Container(
          width: 159,
          height: 156,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(104, 255, 255, 255),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 4),
        child: Container(
          width: 170,
          height: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(144, 255, 255, 255),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          width: 178,
          height: 178,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      Column(
        children: [
          const SizedBox(height: 20),
          Image.asset(item.image),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              item.serviceName,
              style: const TextStyle(
                  color: Color(0xff707070),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(160, 0, 119, 166),
                      Color(0xff16cff3)
                    ]),
                  ),
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
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
        ],
      )
    ],
  );
}
