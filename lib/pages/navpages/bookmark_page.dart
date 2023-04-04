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
            height: 200,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                color: kPrimaryColor),
            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    top: 70,
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
                              color: bWhite,
                              size: 39,
                            )),
                      ],
                    )),

                Positioned(
                    left: 90,
                    top: 80,
                    child: Text(
                      "Book Marks",
                      style: TextStyle(fontSize: 36, color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),

                Positioned(
                    left: 330,
                    top: 80,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bWhite),
                    )),

              ],
            ),
          ),
          SizedBox(
            height: 10
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Nature",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "காவியம்",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Motivation",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "வியர்வை துளி",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Love",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "அந்தி சாயும் நேரம்",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Nature",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "புது விடியல்",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Love",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "தனிமை",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Alone",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "ஆயிரம் கூட்டத்திலும் தனியாய்",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.89,
            height: height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: kPrimaryColor.withOpacity(0.8)),
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 15,
                    child: Text(
                      "Motivation",
                      style: TextStyle(
                          fontSize: 20,
                          color: bWhite,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 20,
                    top: 45,
                    child: Text(
                      "வெற்றிக்கு முதல் படி",
                      style: TextStyle(fontSize: 14, color: bWhite),
                    )),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Icon(Icons.favorite, size: 20, color: bWhite,)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
