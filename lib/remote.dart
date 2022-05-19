import 'dart:async';

import 'package:dio/dio.dart' as dio;

import 'datamodel.dart';
class RemoteService {
  static var client = dio.Dio();
  static var BASE_URL ="https://mgdh.in/api/";
static var token ="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1MDUiLCJuYW1lIjoiU2hvcCBVc2VyIiwibW9iaWxlIjoiOTk5OTk5OTk5OSIsImNyZWF0ZWRfYXQiOiIyMDIxLTA1LTIxIDE1OjM5OjA3IiwidXBkYXRlZF9hdCI6IjIwMjEtMDUtMjEgMTU6Mzk6MDciLCJ0aW1lIjoxNjI3OTAyMDM4fQ.zo_YfBHZe8J6a_OeoR5DLxVvjgdEEV_I60ReoUCBXRI";
  static Future<category?> productCategory() async{
    String theUrl = '${BASE_URL}v2/user/product/type';
    try{
      dio.Response response = await client.get(theUrl,options: dio.Options(headers: {'Token': token})).timeout(Duration(seconds: 30));
      if(response.statusCode==200){
        print(response.data);
        return category.fromJson(response.data);
      }else {
        return null;
      }
    }on TimeoutException catch(_){
      return null;
    }
    // queryParameters: {'search':cpcode}).timeout(Duration(seconds: 30));
  }
}