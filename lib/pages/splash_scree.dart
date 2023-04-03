import 'dart:async';
import 'package:facewaves_frontend/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 7),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const WelcomePage())));

    //   var assetsImage = const AssetImage(
    //     '/assets/Logos/AllGreen.png'); //<- Creates an object that fetches an image.
    var image = Image.asset('assets/All WhiteWithBrownBG.jpg',
        height: 250,
        fit: BoxFit.scaleDown); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: kPrimaryColor),
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
