import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/widgets/app_text.dart';
import 'package:facewaves_frontend/widgets/responsive_button.dart';
class AppButtons extends StatelessWidget {

  double size;
  // final String text;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  IconData? icon;
  bool? isIcon;
  String? text;

  AppButtons({Key? key,
    this.isIcon=false,
    this.text="Hi",
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon==false?Center(child: AppText(text: text!, color:color)):Center(child: Icon(icon, color:color)),

    );
  }
}
