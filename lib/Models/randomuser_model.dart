import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class UserModel
{
  List<dynamic> result;
  UserModel({required this.result});
  factory UserModel.fromjson(Map<String,dynamic> json)
  {
    List<dynamic> fulldata = [];
    for(var i = 0; i < 5 ; i++)
      {
        fulldata.add(json["results"][i]);
      }
    fulldata = fulldata.map(
        (user) {
          return {
          name = user["name"]["first"] + user["name"]["last"];
          gender = user["gender"]
          };
        }
    );
  }


}