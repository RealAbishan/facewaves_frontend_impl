import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/widgets/custom_button.dart';
import 'package:facewaves_frontend/widgets/poem_text.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';


class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> with TickerProviderStateMixin{

  var images = {
    "icon.png": "Explore",
    "icon.png": "Poem",
    "icon.png": "Art",
    "icon.png": "Love",
  };
  List imagesForExplore = [
    "LoveEx.png",
    "ArtEx.png",
    "NatureEx.png",
    "MusicEx.png",
    "LoveEx.png"
  ];
  List lableForExplore = ["Love", "Art", "Nature", "Music", "NEA"];
  List treindingImages = [
    "TrOne.jpeg",
    "TrTwo.jpeg",
    "TrThree.jpeg",
    "TrFour.jpeg"
  ];
  List loveImages = ["LoOne.jpg", "LoTwo.jpg", "LoThree.jpg", "LoFour.jpeg"];
  List artImages = ["ArOne.jpg", "Artwo.jpeg", "ArThree.jpg", "ArFour.jpeg"];

  //Headings
  List loveHeading = ["அழகான நினைவுகள்", "கனவாகி கலைந்தாய்", "கால் தடம்", "ஆயுள் ஆக்ஸிஜன்", "கண் சிமிட்டா பொம்மை"];
  List natureHeading = ["Love", "Art", "Nature", "Music", "NEA"];
  List artHeading = ["Love", "Art", "Nature", "Music", "NEA"];
  List musicHeading = ["Love", "Art", "Nature", "Music", "NEA"];
  List motivationHeading = ["Love", "Art", "Nature", "Music", "NEA"];


  //Headings
  List lovePoem = ["விட்டு விட்டு தான் நினைக்கிறேன்... விட்டு விட தான்நினைக்கிறேன்...ஆனாலும் என் விரல் பிடித்தே வருகிறது...உன் அழகான நினைவுகள்...",
  "இதழ் என்னும் மலர் கொண்டு கடிதங்கள் வரைந்தாய்... பதில் நானும் தரும் முன்பே"
  "... கனவாகி கலைந்தாய்...!- என்னை நோக்கி பாயும் தோட்டா",
    "நீ  நடந்த பாதைகளில் நானும் நடக்கிறேன். நம் காதல் தான் ஒன்று சேரவில்லை. நம் "
        "கால் தடங்களாவது ஒன்று சேரட்டும்...!",
    "உன் முந்தானையில் ஒரு முகக்கவசம் கொடு. ஆயுள் முழுவதும் ஆக்ஸிஜன் இன்றி "
        "வாழ்கிறேன் உன்னுடன் நான்.",
    "அழகிய பொம்மை என நினைத்து கண் சிமிட்டாமல் பார்த்து கொண்டிருந்தேன். நீ கண்"
        " சிமிட்டிய நொடியில் கண் சிமிட்டா பொம்மையானேன் நான்...!"];
  List naturePoem = ["Love", "Art", "Nature", "Music", "NEA"];
  List artPoem = ["Love", "Art", "Nature", "Music", "NEA"];
  List musicPoem = ["Love", "Art", "Nature", "Music", "NEA"];
  List motivationPoem = ["Love", "Art", "Nature", "Music", "NEA"];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          //Favourites Page Navigation With Title
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
                    left: 148,
                    top: 75,
                    child: Text(
                      "Favourites",
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

          SizedBox(height: 10,),
          //Menu Text
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 10),
                  controller: _tabController,
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: kPrimaryColor.withOpacity(0.3),
                  isScrollable: true,
                  indicator: CircleTabIndicator(color: kPrimaryColor, radius: 4),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Love",
                    ),
                    Tab(
                      text: "Nature",
                    ),
                    Tab(
                      text: "Art",
                    ),
                    Tab(
                      text: "Music",
                    ),
                    Tab(
                      text: "Motivation",
                    ),
                  ]),
            ),
          ),


          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 550,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: kPrimaryColor.withOpacity(0.6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                              top: 20,
                              child: Text(
                                loveHeading[index],
                                style: TextStyle(fontSize: 24, color: bWhite
                                    .withOpacity(0.9), fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                            width: 250,
                              left: 30,
                              top: 50,
                              child: Text(
                                lovePoem[index],
                                style: TextStyle(fontSize: 18, color: bWhite
                                    .withOpacity(0.9)),
                              )),

                          Positioned(
                              left: 280,
                              top: 130,
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
                                        Icons.chevron_right_outlined,
                                        color: bWhite,
                                        size: 39,
                                      )),
                                ],
                              )),

                        ],
                      ),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: kPrimaryColor.withOpacity(0.6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 30,
                              top: 20,
                              child: Text(
                                loveHeading[index],
                                style: TextStyle(fontSize: 24, color: bWhite
                                    .withOpacity(0.9), fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              width: 250,
                              left: 30,
                              top: 50,
                              child: Text(
                                lovePoem[index],
                                style: TextStyle(fontSize: 18, color: bWhite
                                    .withOpacity(0.9)),
                              )),

                          Positioned(
                              left: 280,
                              top: 130,
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
                                        Icons.chevron_right_outlined,
                                        color: bWhite,
                                        size: 39,
                                      )),
                                ],
                              )),

                        ],
                      ),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: kPrimaryColor.withOpacity(0.6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 30,
                              top: 20,
                              child: Text(
                                loveHeading[index],
                                style: TextStyle(fontSize: 24, color: bWhite
                                    .withOpacity(0.9), fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              width: 250,
                              left: 30,
                              top: 50,
                              child: Text(
                                lovePoem[index],
                                style: TextStyle(fontSize: 18, color: bWhite
                                    .withOpacity(0.9)),
                              )),

                          Positioned(
                              left: 280,
                              top: 130,
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
                                        Icons.chevron_right_outlined,
                                        color: bWhite,
                                        size: 39,
                                      )),
                                ],
                              )),

                        ],
                      ),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: kPrimaryColor.withOpacity(0.6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 30,
                              top: 20,
                              child: Text(
                                loveHeading[index],
                                style: TextStyle(fontSize: 24, color: bWhite
                                    .withOpacity(0.9), fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              width: 250,
                              left: 30,
                              top: 50,
                              child: Text(
                                lovePoem[index],
                                style: TextStyle(fontSize: 18, color: bWhite
                                    .withOpacity(0.9)),
                              )),

                          Positioned(
                              left: 280,
                              top: 130,
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
                                        Icons.chevron_right_outlined,
                                        color: bWhite,
                                        size: 39,
                                      )),
                                ],
                              )),

                        ],
                      ),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: kPrimaryColor.withOpacity(0.6),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 30,
                              top: 20,
                              child: Text(
                                loveHeading[index],
                                style: TextStyle(fontSize: 24, color: bWhite
                                    .withOpacity(0.9), fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              width: 250,
                              left: 30,
                              top: 50,
                              child: Text(
                                lovePoem[index],
                                style: TextStyle(fontSize: 18, color: bWhite
                                    .withOpacity(0.9)),
                              )),

                          Positioned(
                              left: 280,
                              top: 130,
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
                                        Icons.chevron_right_outlined,
                                        color: bWhite,
                                        size: 39,
                                      )),
                                ],
                              )),

                        ],
                      ),
                    ),

                  );
                },
              ),
            ]),
          ),


        ],
      ),
    );
  }
}



class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}

