import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:random_users/Models/randomuser_model.dart';

class UserService{
  static final Dio dio = Dio();
  String url ='#';
  static Future<UserModel> fetchrandomuser() async{
    try{
      Response response = await dio.get();
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