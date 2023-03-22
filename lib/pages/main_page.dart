import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/pages/navpages/account_page.dart';
import 'package:facewaves_frontend/pages/navpages/bookmark_page.dart';
import 'package:facewaves_frontend/pages/navpages/home_page.dart';
import 'package:facewaves_frontend/pages/navpages/prediction_page.dart';
import 'package:facewaves_frontend/pages/navpages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/authControllers/auth_controller.dart';
class MainPage extends StatefulWidget {
  //final String email;
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    SearchPage(),
    PredictionPage(),
    BookmarkPage(),
    AccountPage()
  ];

  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bWhite,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        //nedd to be chnage to fixed if i need to add another colour for BG
        type:BottomNavigationBarType.fixed,
        backgroundColor: bWhite,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor.withOpacity(0.3),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.add)),
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.bookmark)),
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
