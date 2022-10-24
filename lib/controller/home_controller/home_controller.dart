import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:wecan/model/home_Model.dart';

import '../../model/dream_model.dart';

class HomeController extends GetxController{

  HomeMdoel ? homeModel;
  DreamModel ?dreamModel;
  Future<void>getDataModel() async
  {
   await Dio().get('http://ta2weel.com/public/api/v1/recent-dreams?page=1').then((value) {
     homeModel =HomeMdoel.fromJson(value.data);
     print(value.data);
     update();
    }).catchError((error){
      if(error is DioError){
        print(error.response!.data);
      }
    });

  }
  Future<void>getDataScreenTwo({required int id}) async
  {
    await Dio().get('https://ta2weel.com/public/api/v1/dream/$id').then((value) {
      dreamModel =DreamModel.fromJson(value.data);
      print(value.data);
      update();
    }).catchError((error){
      if(error is DioError){
        print(error.response!.data);
      }
    });

  }

}