import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:wecan/model/home_Model.dart';

import '../../model/dream_model.dart';

class DreamController extends GetxController{

  DreamModel ?dreamModel;

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