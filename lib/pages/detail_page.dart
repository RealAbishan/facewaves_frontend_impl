import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/widgets/app_text.dart';
import 'package:facewaves_frontend/widgets/poem_text.dart';

//import 'package:facewaves_frontend/model/poem_model.dart';
import 'package:facewaves_frontend/widgets/app_buttons.dart';
import 'package:facewaves_frontend/widgets/responsive_button.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  // @override
  // void initState(){
  //   super.initState();
  //   getData();
  // }
  //
  // void getData() async{
  //   try{
  //     var response = await Dio.get
  //       ('localhost:8080/api/usr-mgt/upload/getPoems');
  //     // var jsonData = json.decode(data.body);
  //     if(response.statusCode ==200){
  //       setState(() {
  //         jsonList = response.data
  //       });
  //     }
  //     else{
  //       print(response.statusCode)
  //     }
  //
  //   }
  //   catch(e){
  //     print(e)
  //   }
  // }
  //
  // var poems = List<PoemModel>.generate(200, (index) => null);
  //
  // Future<List<PoemModel>> getPoems() async {
  //   var data = await http.get('localhost:8080/api/usr-mgt/upload/getPoems');
  //   var jsonData = json.decode(data.body);
  //
  //   List<PoemModel> poem = [];
  //   for (var e in jsonData) {
  //     PoemModel poemModel = new PoemModel();
  //     poemModel.title = e["title"];
  //     poemModel.poem = e["poem"];
  //   }
  //   return poem;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [


            Positioned(
                left:0,
                right: 0,
                child: Container(
                width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(
                      "assets/TrTwo.jpeg"
                    ),
                      fit: BoxFit.cover
                    ),

                  ),
            )
            ),

            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                    }, icon:Icon(Icons.chevron_left_rounded,
                    color: kPrimaryColor,
                      size: 39,
                    )
                    ),

                    // IconButton(onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                    // }, icon:Icon(Icons.chevron_left_rounded,
                    //   color: kPrimaryColor,
                    //   size: 39,
                    // )
                    // ),
                    //Expanded(child: Container()),
                    // Container(
                    //   margin:const EdgeInsets.only(right: 20),
                    //   width: 50,
                    //   height: 50,
                    //
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.grey.withOpacity(0.3)
                    //   ),
                    // )

                  ],
                )),

            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: bWhite,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "நீ என் தேவதை",size: 36,color: kPrimaryColor.withOpacity(0.8),),
                        ],
                      ),
                      SizedBox(height: 20,),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     AppLargeText(text: "Emotion Name",size:24,color: kPrimaryColor.withOpacity(0.8),),
                      //   ],
                      // ),
                      // SizedBox(height: 20,),


                      Row(
                        children: [
                          Container(
                            width: 350,
                            child: PoemText(
                              text: "உன்னை என் தேவதை என்று நினைத்துதான்"
                              "வழிபட ஆரம்பித்திருக்கிறேன் ."
                              "ஒரு வேளை"
                              "நீ தேவதையாக இல்லாமலிருந்தாலும்"
                            "என் வழிபாடுகள்"
                            "உன்னை தேவதை ஆக்கிவிடும் !",
                              color: kPrimaryColor,
                              size: 14,
                            ),
                          ),
                      //     AppText(
                      //       text: "They say the ice will hold so there I go,forced to believe them by my act of trusting people,"
                      // "stepping out on it,and naturally it gaps open and I, forced to carry on coolly "
                      // "by my act of being imperturbable, slide erectly into the water wearing my captain's helmet, "
                      // "waving to the shore with a sad smile, "
                      //     "Goodbye my darlings, goodbye dear one,as the ice meets again over my head with a click.",
                      //        color: kPrimaryColor.withOpacity(0.45),
                      //       size: 14,
                      //     ),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
            )
            ),

            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                children: [
                  AppButtons(size: 50,
                      color: kPrimaryColor,
                      backgroundColor: Colors.white,
                      borderColor: kPrimaryColor,
                      isIcon:true,
                      icon:Icons.favorite_border
                  ),

                  SizedBox(width: 20,),
                  ResponsiveButton(
                    isResponsive:true,
                  )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
