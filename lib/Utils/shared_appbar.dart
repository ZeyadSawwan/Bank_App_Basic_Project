import 'package:flutter/material.dart';

AppBar myAppBar({
  required void Function()? onTap,
  required String title,
  required Widget forleading,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    automaticallyImplyLeading: true,
    leading: forleading,
    actions: [
      IconButton(
        onPressed: onTap,
        icon: Image.asset("Assets/images/menu.png"),
      )
    ],
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        Expanded(
          child: Container(),
          flex: 3,
        ),
        Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        Expanded(
          flex: 4,
          child: Container(),
        )
      ],
    ),
  );
}
