import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/tags/tags_model.dart';
import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint.dart';
import '../models/message_model.dart';

class TagsRepo extends ApiClient {
  TagsRepo();

  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndpoint.tags);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = TagsModel.fromJson(response.data);
        return responseData;
      } else {
        TagsModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }

  Future<MessageModel> addNewTags(String title, String slug) async {
    Map body = {
      'title': title,
      'slug': slug,
    };
    try {
      final response = await postRequest(
          path: ApiEndpoint.addTags, isTokenRequired: true, body: body);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = MessageModel.fromJson(response.data);
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return MessageModel();
  }

  Future<MessageModel> deleteTags(String id) async {
    
    try {
      final response = await postRequest(
          path: "${ApiEndpoint.deleteTags}/$id", isTokenRequired: true,);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = MessageModel.fromJson(response.data);
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return MessageModel();
  }

  Future<MessageModel> updateTags(String id, String title, String slug) async {
    
    Map body = {"id": id, "title": title, "slug": slug};
    try {
      final response = await postRequest(
          path: ApiEndpoint.updateTags, isTokenRequired: true,body: body);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = MessageModel.fromJson(response.data);
        return responseData;
      } else {
        MessageModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return MessageModel();
  }
}
