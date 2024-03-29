import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:facewaves_frontend/cubit/app_cubit.states.dart';
import 'package:facewaves_frontend/cubit/app_cubits.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:facewaves_frontend/pages/main_page.dart';
import 'package:facewaves_frontend/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is DetailState){
            return DetailsPage();
          }if(state is WelcomeState){
            return WelcomePage();
          }if(state is LoadedState){
            return MainPage();
          }if(state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }else{
            return Container();
          }
        },
      ),
    );
  }
}
