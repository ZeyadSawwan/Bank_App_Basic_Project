import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  String maintitle;
  String subject;
  Icon icon;

  TitleList({
    Key? key,
    required this.maintitle,
    required this.subject,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        top: 10,
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: CircleAvatar(
          backgroundColor: Color(0xfffa7070),
          radius: 15,
          child: icon,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Text(
          "9:33am 26 sep 17",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 8,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      title: Text(
        maintitle,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xff95989a),
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(
          subject,
          maxLines: 3,
          style: const TextStyle(
            fontSize: 10,
            color: Color(0xff95989a),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
