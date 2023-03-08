import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoemText extends StatelessWidget {

  double size;
  final String text;
  final Color color;

  PoemText({Key? key,
    this.size = 16,
    required this.text,
    this.color = Colors.black54}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,

      style: TextStyle(
          color: color,
          fontSize: size,
        letterSpacing: 0.5,
        height: 1.5

      ),
    );
  }
}
