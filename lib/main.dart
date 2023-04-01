import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:facewaves_frontend/pages/welcome_page.dart';
import 'package:facewaves_frontend/pages/splash_scree.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:facewaves_frontend/pages/login_page.dart';
import 'package:facewaves_frontend/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:facewaves_frontend/cubit/app_cubit_logics.dart';
import 'package:facewaves_frontend/cubit/app_cubits.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:facewaves_frontend/authControllers/auth_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Face Waves',
       //home: WelcomePage()
        home: LogInPage()
        //home: SplashScreen()
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
//com.facewaves.facewavesFrontend