import 'package:flutter/material.dart';

AppBar tabBar({
  required void Function()? onTap,
  required String title,
  required Widget forleading,
  required String tabBarTitleOne,
  required String tabBarTitleTwo,
}) {
  return AppBar(
    toolbarHeight: 75,
    bottom: TabBar(
        indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 3, color: Colors.white),
            insets: EdgeInsets.symmetric(horizontal: 70)),
        indicatorWeight: 2,
        indicatorColor: Colors.white,
        tabs: [Text(tabBarTitleOne), Text(tabBarTitleTwo)]),
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
