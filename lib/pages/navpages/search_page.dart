import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/pages/main_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showButton = false;

    List labelForTitle = [
      "Love",
      "Art",
      "Nature",
      "Music",
      "NEA"
    ];
    List labelForSubTitle = ["Love is ","jhsadh","ahsdhasiodhoashda","ajgkdis"
        "gadiua","sadggad"];
    var emailController =  TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
      children: [

        Container(
          margin: const EdgeInsets.only(left:20, right: 20),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Container(
                  decoration: BoxDecoration(
                      color: bWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child:TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search, color: kPrimaryColor,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: bWhite
                            )
                        ),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: bWhite
                            )
                        ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  decoration: BoxDecoration(
                      color: bWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1,1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
              ),
            ],
          ),
        ),


        Container(
          padding: const EdgeInsets.only(left: 20),
          width: width  * 0.89,
          height: height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)
              ),
              color: kPrimaryColor.withOpacity(0.8)
          ),


          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  child:Text(
                    "Love", style: TextStyle(fontSize: 30, color: bWhite),
                  )

              ),

              Positioned(
                  top: 60,
                  child:Text(
                    "Love", style: TextStyle(fontSize: 18, color: bWhite),
                  )

              ),


              AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: showButton ? ElevatedButton(
                    onPressed: () => print("Hi!"),
                    child: const Text("Hello")
                ) : const SizedBox.shrink(),
              ),

            ],
          ),
        ),


        SizedBox(height: 20,),

        Container(
          padding: const EdgeInsets.only(left: 20),
          width: width  * 0.89,
          height: height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)
              ),
              color: kPrimaryColor.withOpacity(0.8)
          ),

          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  child:Text(
                    "Nature", style: TextStyle(fontSize: 30, color: bWhite),
                  )

              ),

              Positioned(
                  top: 60,
                  child:Text(
                    "Love", style: TextStyle(fontSize: 18, color: bWhite),
                  )

              ),




            ],
          ),
        ),

        SizedBox(height: 20,),

        Container(
          padding: const EdgeInsets.only(left: 20),
          width: width  * 0.89,
          height: height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)
              ),
              color: kPrimaryColor.withOpacity(0.8)
          ),

          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  child:Text(
                    "Art", style: TextStyle(fontSize: 30, color: bWhite),
                  )

              ),

              Positioned(
                  top: 60,
                  child:Text(
                    "Love", style: TextStyle(fontSize: 18, color: bWhite),
                  )

              ),




            ],
          ),
        ),

        SizedBox(height: 20,),

        Container(
          padding: const EdgeInsets.only(left: 20),
          width: width  * 0.89,
          height: height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)
              ),
              color: kPrimaryColor.withOpacity(0.8)
          ),

          child: Stack(
            children: [
              Positioned(
                  top: 20,
                  child:Text(
                    "Music", style: TextStyle(fontSize: 30, color: bWhite),
                  )

              ),

              Positioned(
                  top: 60,
                  child:Text(
                    "Love", style: TextStyle(fontSize: 18, color: bWhite),
                  )

              ),




            ],
          ),
        ),
      ],
      ),
    );
  }
}