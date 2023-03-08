import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/widgets/custom_button.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30,color:kPrimaryColor),
                Expanded(child: Container()),
                Container(
                  margin:const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3)
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),

          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 45, left: 35),
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage(
                              "assets/TrOne.jpeg"),
                          fit: BoxFit.cover)),


                  //CustomButton()
                ),

              ],
            ),
          ),

          SizedBox(height: 30,),

          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomResponsiveButton(
                iconData: Icons.image_outlined,
                text: "Pick from Gallery",

              )
          ),


          SizedBox(height: 30,),

          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomResponsiveButton(
                iconData: Icons.camera_enhance_outlined,
                text: "Select from Camera",
              )
          ),
        ],
      ),
    );
  }
}