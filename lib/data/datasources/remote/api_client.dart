
import 'package:azkaban_bulletin/data/datasources/remote/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constants.dart';


class ApiClient {

  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient(){
    baseOptions = BaseOptions(baseUrl: ApiConstants.mainUrl);
    dio = Dio(baseOptions);
  }

  Future<Response> getRequest({required String path}) async{
    
    try {
        Response response = await dio.get(path);
        debugPrint('===========Status Code==================');
        debugPrint(response.statusCode.toString());
        debugPrint('===========Data==================');
        debugPrint(response.data.toString());
        return response;
    } catch (e) {
      debugPrint(e.toString());
      throw ApiException(message: e.toString());
    }
  }


  Future<Response> postRequest({required String path,required dynamic body}) async{
    
//     Map<String,dynamic> body = {
//     "title" : "TarData1",
//     "slug" : "TarData1"
// };

  final options = Options(
    headers: {
      'Authorization' : 'Bearer 2025|8JeTh4u2pHfAj6iy6383TbBjF8jnQqPPYOXjOabc',
    }
  );

    try {
        Response response = await dio.post(path,options: options,data: body);
        debugPrint('===========Status Code==================');
        debugPrint(response.statusCode.toString());
        debugPrint('===========Data==================');
        debugPrint(response.data.toString());
        return response;
    } catch (e) {
      debugPrint(e.toString());
      throw ApiException(message: e.toString());
    }
  }
}


