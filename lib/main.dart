import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:facewaves_frontend/pages/welcome_page.dart';
import 'package:facewaves_frontend/pages/splash_scree.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:facewaves_frontend/cubit/app_cubit_logics.dart';
import 'package:facewaves_frontend/cubit/app_cubits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Waves',
       //home: WelcomePage()
         home: SplashScreen()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
