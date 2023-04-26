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

    List labelForTitle = ["Love", "Art", "Nature", "Music", "NEA"];
    List labelForSubTitle = [
      "Love is ",
      "jhsadh",
      "ahsdhasiodhoashda",
      "ajgkdis"
          "gadiua",
      "sadggad"
    ];
    var emailController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          //Search Page Navigation With Title
          Container(
            height: 120,
            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(
                              Icons.chevron_left_rounded,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),
                Positioned(
                    left: 168,
                    top: 75,
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 330,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),
              ],
            ),
          ),

          //Search Text Field
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: bWhite,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: kPrimaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: bWhite)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: bWhite)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: bWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                ),
              ],
            ),
          ),

          //Search Results Text
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 2),
            width: width * 0.89,
            //height: height * 0.09,
            child: Text(
              "Search Results",
              style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor.withOpacity(0.9),
                  fontWeight: FontWeight.bold),
            ),
          ),

          //Search Results Dummy Containers
          //Love
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: width * 0.89,
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                border:
                    Border.all(width: 2, color: kPrimaryColor.withOpacity(0.4)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 17,
                    child: Text(
                      "தனிமை",
                      style: TextStyle(fontSize: 24, color: kPrimaryColor
                          .withOpacity(0.9), fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 50,
                    child: Text(
                      "Love",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor.withOpacity(0.9)),
                    )),

              ],
            ),
          ),

          SizedBox(height: 10,),

          //Nature
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: width * 0.89,
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                border:
                Border.all(width: 2, color: kPrimaryColor.withOpacity(0.4)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 17,
                    child: Text(
                      "காவியம்",
                      style: TextStyle(fontSize: 24, color: kPrimaryColor
                          .withOpacity(0.9), fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 50,
                    child: Text(
                      "Nature",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor.withOpacity(0.9)),
                    )),

              ],
            ),
          ),

          SizedBox(height: 10,),

          //Motivation
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: width * 0.89,
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                border:
                Border.all(width: 2, color: kPrimaryColor.withOpacity(0.4)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 17,
                    child: Text(
                      "வெற்றிக்கு முதல் படி",
                      style: TextStyle(fontSize: 24, color: kPrimaryColor
                          .withOpacity(0.9), fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 50,
                    child: Text(
                      "Motivation",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor.withOpacity(0.9)),
                    )),

              ],
            ),
          ),

          SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.only(left: 20),
            width: width * 0.89,
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                border:
                Border.all(width: 2, color: kPrimaryColor.withOpacity(0.4)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 17,
                    child: Text(
                      "கூட்டத்திலும் தனியாய்",
                      style: TextStyle(fontSize: 24, color: kPrimaryColor
                          .withOpacity(0.9), fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 50,
                    child: Text(
                      "Motivation",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor.withOpacity(0.9)),
                    )),

              ],
            ),
          ),

          SizedBox(height: 10,),


          Container(
            padding: const EdgeInsets.only(left: 20),
            width: width * 0.89,
            height: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: bWhite.withOpacity(0.8),
                border:
                Border.all(width: 2, color: kPrimaryColor.withOpacity(0.4)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 17,
                    child: Text(
                      "தனிமை",
                      style: TextStyle(fontSize: 24, color: kPrimaryColor
                          .withOpacity(0.9), fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 50,
                    child: Text(
                      "Love",
                      style: TextStyle(fontSize: 18, color: kPrimaryColor.withOpacity(0.9)),
                    )),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
