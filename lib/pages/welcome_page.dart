import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/widgets/app_text.dart';
import 'package:facewaves_frontend/widgets/responsive_button.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:facewaves_frontend/pages/signup_page.dart';
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
                      SizedBox(height: 40,),

                      // ResponsiveButton(width: 120,)

                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                              padding:  const EdgeInsets.only(bottom: 2),
                              textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute
                              (builder: (context) => SignupPage()));
                          },

                          child: Image.asset("assets/arrow.png"),
                        ),
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
