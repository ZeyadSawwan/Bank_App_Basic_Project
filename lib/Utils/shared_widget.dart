import 'dart:ui';

import 'package:flutter/material.dart';

class SharedWidget {
  backgroundImage(context, {required double sigmaX, required double sigmaY}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: Image.asset(
            'Assets/images/signin_background.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Image mainAppImage({required Color color, required double scaleForImages}) {
    return Image.asset(
      "Assets/images/Bank_Logo.png",
      color: color,
      scale: scaleForImages,
    );
  }
}
