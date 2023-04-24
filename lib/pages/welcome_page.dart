import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/widgets/app_text.dart';
import 'package:facewaves_frontend/widgets/responsive_button.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:facewaves_frontend/pages/signup_page.dart';
import 'package:facewaves_frontend/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];

  List appLargeText = [
    "Explore",
    "Innovative",
    "Vast"
  ];

  List appText = [
    "Poems",
    "Themes",
    "Search"
  ];


  List description = [
    "To read poems is to hear it with our eyes to hear is to see it with our ears",
    "Poetry is the spontaneous overflow of powerful feelings: it takes its origin from emotion recollected in tranquility.",
    "Poetry, even when apparently most fantastic, is always a revolt against artifice, a revolt, in a sense, against actuality.",
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/" + images[index]
                ),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: appLargeText[index]),
                      AppText(text: appText[index], size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: description[index],
                         // color: kPrimaryColor,
                          size: 14,
                        ),
                      ),
                      SizedBox(height: 440,),

                      // ResponsiveButton(width: 120,)

                      Container(
                        width: width * 0.86,
                        height: 50,

                        child:  Container(
                          child: GestureDetector(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute
                                         (builder: (context) => LogInPage()));
                            },
                            child: Container(
                              width: width * 0.879,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  color: bWhite.withOpacity(0.8),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 7,
                                        offset: Offset(1, 1),
                                        color: Colors.grey.withOpacity(0.3))
                                  ]),
                              child: Stack(
                                children: [

                                  Positioned(
                                      left: 30,
                                      top: 10,
                                      child: Text(
                                        "Get Start",
                                        style: TextStyle(fontSize: 24, color:
                                        kPrimaryColor,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      right: 15,
                                      top: 6,
                                      child: Icon(Icons.chevron_right_outlined, size: 36, color:
                                      kPrimaryColor,)),
                                  Positioned(
                                      right: 22,
                                      top: 6,
                                      child: Icon(Icons.chevron_right_outlined, size: 36, color:
                                      kPrimaryColor,)),
                                  Positioned(
                                      right: 29,
                                      top: 6,
                                      child: Icon(Icons.chevron_right_outlined, size: 36, color:
                                      kPrimaryColor,)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // child: ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     primary: kPrimaryColor,
                        //       padding:  const EdgeInsets.only(bottom: 2),
                        //       textStyle: TextStyle(
                        //       fontSize: 30,
                        //       fontWeight: FontWeight.bold
                        //     )
                        //   ),
                        //   onPressed: (){
                        //     Navigator.push(context, MaterialPageRoute
                        //       (builder: (context) => SignupPage()));
                        //   },
                        //
                        //   child: Image.asset("assets/arrow.png"),
                        // ),
                      )


                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin:  const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots? kPrimaryColor : kPrimaryColor.withOpacity(0.4),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
      }),
    );
  }
}
