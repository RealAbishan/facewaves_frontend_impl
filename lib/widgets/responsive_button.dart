import 'package:flutter/cupertino.dart';

import '../constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/widgets/app_text.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({super.key, this.width = 120, this.isResponsive = false});


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin:const EdgeInsets.only(left: 20,right: 10),
                child: AppText(text: "Add to favourite", color:bWhite, size: 24,)):Container(),
            Image.asset("assets/arrow.png"),

          ],
        ),
      ),
    );
  }
}
