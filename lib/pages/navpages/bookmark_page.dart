import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/widgets/custom_button.dart';
import 'package:facewaves_frontend/widgets/poem_text.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bWhite,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)
              ),
                color: kPrimaryColor
            ),

            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    top: 70,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                        }, icon:Icon(Icons.chevron_left_rounded,
                          color: bWhite,
                          size: 39,
                        )
                        ),
                      ],
                    )),

                Positioned(
                    left: 120,
                    top: 80,
                    child:Text(
                      "Book Marks", style: TextStyle(fontSize: 30, color: bWhite),
                    )

                ),


                Positioned(
                    left: 330,
                    top: 80,
                    child:Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bWhite
                      ),
                    )

                ),

                // Positioned(
                //     top: 320,
                //     child: Container(
                //       padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                //       width: MediaQuery.of(context).size.width,
                //       height: 500,
                //       decoration: BoxDecoration(
                //           color: bWhite,
                //           borderRadius: BorderRadius.only(
                //               topLeft: Radius.circular(40),
                //               topRight: Radius.circular(40)
                //           )
                //       ),
                //       child: Column(
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               AppLargeText(text: "The Farewell",size: 36,color: kPrimaryColor.withOpacity(0.8),),
                //             ],
                //           ),
                //           SizedBox(height: 20,),
                //
                //           // Row(
                //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           //   children: [
                //           //     AppLargeText(text: "Emotion Name",size:24,color: kPrimaryColor.withOpacity(0.8),),
                //           //   ],
                //           // ),
                //           // SizedBox(height: 20,),
                //
                //
                //           Row(
                //             children: [
                //               Container(
                //                 width: 350,
                //                 child: PoemText(
                //                   text: "They say the ice will hold so there I go,forced to believe them by my act of trusting people,"
                //                       "stepping out on it,and naturally it gaps open and I, forced to carry on coolly "
                //                       "by my act of being imperturbable, slide erectly into the water wearing my captain's helmet, "
                //                       "waving to the shore with a sad smile, "
                //                       "Goodbye my darlings, goodbye dear one,as the ice meets again over my head with a click.",
                //                   color: kPrimaryColor,
                //                   size: 14,
                //                 ),
                //               ),
                //               //     AppText(
                //               //       text: "They say the ice will hold so there I go,forced to believe them by my act of trusting people,"
                //               // "stepping out on it,and naturally it gaps open and I, forced to carry on coolly "
                //               // "by my act of being imperturbable, slide erectly into the water wearing my captain's helmet, "
                //               // "waving to the shore with a sad smile, "
                //               //     "Goodbye my darlings, goodbye dear one,as the ice meets again over my head with a click.",
                //               //        color: kPrimaryColor.withOpacity(0.45),
                //               //       size: 14,
                //               //     ),
                //             ],
                //           ),
                //           SizedBox(height: 20,),
                //         ],
                //       ),
                //     )
                // ),
              ],
            ),
          ),

          SizedBox(height: height * 0.05,),

          // Container(
          //   height: 230,
          //   child: Stack(
          //     children: [
          //       Positioned(
          //           child: Material(
          //         child: Container(
          //           height: 180,
          //           width: width * 0.9,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: bWhite,
          //             new BoxShadow(
          //               color: kPrimaryColor.withOpacity(0.3),
          //               offset: new Offset(-10.0, 10.0),
          //               blurRadius: 20,
          //               spreadRadius: 4
          //             )
          //           ),
          //         ),
          //       ))
          //     ],
          //   ),
          // )



        ],
      ),
    );
  }
}