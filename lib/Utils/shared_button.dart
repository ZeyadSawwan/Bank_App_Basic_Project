import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  final Gradient gradient;
  final Color textColor;
  final String text;
  final void Function()? onTap;
  final double buttonWidth;
  final double buttonHeight;
  final Widget widget;

  const SharedButton({
    required this.widget,
    required this.gradient,
    required this.textColor,
    required this.text,
    required this.onTap,
    required this.buttonHeight,
    required this.buttonWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: gradient,
      ),
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}
