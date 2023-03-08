import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  String location() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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


          //Disciver Text
          Container(
              padding: const EdgeInsets.only( left: 20),
              child: AppLargeText(
                text: greeting() + " " + "," + " " + "Abishan",
                color: kPrimaryColor,
                size: 30,
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(
              text: "Colombo, Sri Lanka",
              color: kPrimaryColor,
              size: 18,
            ),
          ),

          SizedBox(height: 20,),

          //Menu Text
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: kPrimaryColor.withOpacity(0.3),
                  isScrollable: true,
                  indicator: CircleTabIndicator(color: kPrimaryColor, radius: 4),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: "Trending",
                    ),
                    Tab(
                      text: "Love",
                    ),
                    Tab(
                      text: "Art",
                    )
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
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
                              image: AssetImage("assets/" + treindingImages[index]),
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

          SizedBox(
            height: 30,
          ),
          //Row Section
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: "Explore More",
                  size: 22,
                  color: kPrimaryColor,
                ),
                AppLargeText(
                  text: "See All",
                  size: 14,
                  color: kPrimaryColor.withOpacity(0.5),
                )
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: imagesForExplore.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(right: 50),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/" + imagesForExplore[index]),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: AppLargeText(
                            size: 12,
                            text: lableForExplore[index],
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                  );
                }),
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

