import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:random_users/Models/randomuser_model.dart';

class UserService{
  //ujnhn
  //jjn
  static final Dio dio = Dio();
  //dgdgjj
  String url ='#';
  static Future<UserModel> fetchrandomuser() async{
    try{
      Response response = await dio.get();
      //rhgrh
      if(response.statusCode == 200)
      {
        return UserModel.fromjson(response.data);
      }
      else{
        throw Exception("Cant featch data");
      }
    }
    catch(e){
      throw Exception("Error fetching users $e");
    }
  }

}