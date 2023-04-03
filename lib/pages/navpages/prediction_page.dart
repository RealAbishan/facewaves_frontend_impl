import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:facewaves_frontend/pages/generated_poem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/widgets/custom_button.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
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
                  margin: const EdgeInsets.only(right: 45, left: 28),
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

          SizedBox(height: 20,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: CustomResponsiveButton(
              //iconData: Icons.image_outlined,
              text: "Pick from Gallery",

            )
          ),


          SizedBox(height: 10,),

          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomResponsiveButton(
               // iconData: Icons.camera_enhance_outlined,
                text: "Select from Camera",
              )
          ),

          SizedBox(height: 10,),
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  GeneratedPoemPage()));
            },
            child:  Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomResponsiveButton(
                // iconData: Icons.camera_enhance_outlined,
                text: "Generate Poem",
              ),

            ),
          ),

        ],
      ),
    );
  }
}