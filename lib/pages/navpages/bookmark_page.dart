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
                itemCount: 4,
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
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          ),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/" + loveImages[index]),
                              fit: BoxFit.cover)),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/" + artImages[index]),
                              fit: BoxFit.cover)),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/" + loveImages[index]),
                              fit: BoxFit.cover)),
                    ),

                  );
                },
              ),
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/" + artImages[index]),
                              fit: BoxFit.cover)),
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

