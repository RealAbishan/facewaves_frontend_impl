import 'package:bloc/bloc.dart';
import 'package:facewaves_frontend/cubit/app_cubit.states.dart';
// import 'package:flutter_cubit/model/data_model.dart';
// import 'package:flutter_cubit/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  // AppCubits({required this.data}) : super(InitialState()){
  //   emit(WelcomeState());
  // }

  AppCubits() : super(InitialState()){
    emit(WelcomeState());
  }

  // final DataServices data;
  // late final places;
  //
  // void getData()async{
  //   try{
  //     emit(LoadingState());
  //     places = await data.getInfo();
  //     emit(LoadedState(places));
  //   }catch(e){
  //
  //   }
  // }
  //
  // detailPage(DataModel data){
  //   emit(DetailState(data));
  // }
  //
  // goHome(){
  //   emit(LoadedState(places));
  // }

}