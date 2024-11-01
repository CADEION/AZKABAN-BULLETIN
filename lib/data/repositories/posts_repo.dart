import 'dart:convert';

import 'package:azkaban_bulletin/data/models/message_model.dart';
import 'package:azkaban_bulletin/presentation/screens/general/home/home_model.dart';
import 'package:dio/dio.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/profile/profile_model.dart';
import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint.dart';

class PostsRepo extends ApiClient {
  PostsRepo();

  Future<HomeModel> getAllPosts() async {
    try {
      final response = await getRequest(path: ApiEndpoint.posts);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = HomeModel.fromJson(response.data);
        return responseData;
      } else {
        return HomeModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      return HomeModel();
    }
  }

  Future<ProfileModel> getUserPosts() async {
    try {
      final response =
          await getRequest(path: ApiEndpoint.userPosts, isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = profileModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        ProfileModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      ProfileModel();
    }
    return ProfileModel();
  }

  Future<MessageModel> addPosts(String title,String slug,String categories,String tags,String body,String userId,String filepath,String filename) async {
    final formData = FormData.fromMap({
      'title': title,
      'slug': slug,
      'categories': categories,
      'tags': tags,
      'body': body,
      'status': '1',
      'user_id': userId,
      'featuredimage':
          await MultipartFile.fromFile(filepath, filename: filename),
    });
    

    try {
      final response = await postRequest(
          path: ApiEndpoint.addPosts, isTokenRequired: true, body: formData);
      if (response.statusCode == 200) {
        final responseData = messageModelFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      MessageModel();
    }
    return MessageModel();
  }
}
