import 'package:azkaban_bulletin/data/datasources/remote/api_client.dart';
import 'package:azkaban_bulletin/data/datasources/remote/api_endpoint.dart';
import 'package:azkaban_bulletin/data/models/message_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/categories/categories_model.dart';

class CategoriesRepo extends ApiClient {
  CategoriesRepo();

  Future<CategoriesModel> getAllCategories() async {
    try {
      var response = await ApiClient().getRequest(path: ApiEndpoint.categories);
      if (response.statusCode == 200) {
        final responseData = CategoriesModel.fromJson(response.data);
        return responseData;
      } else {
        CategoriesModel();
      }
    } on Exception catch (e) {
      Vx.log(e);
      CategoriesModel();
    }
    return CategoriesModel();
  }

  Future<MessageModel> addCategories(String title,String slug) async {
    Map body = {"title": title, "slug": slug};
    try {
      var response =
          await ApiClient().postRequest(path: ApiEndpoint.addCategories,body: body,isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = MessageModel.fromJson(response.data);
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

  Future<MessageModel> updateCategories(String id,String title,String slug) async {
    Map body = {"id": id,"title": title, "slug": slug};
    try {
      var response =
          await ApiClient().postRequest(path: ApiEndpoint.updateCategories,body: body,isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = MessageModel.fromJson(response.data);
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

  Future<MessageModel> deleteCategories(String id) async {
    
    try {
      var response =
          await ApiClient().postRequest(path: '${ApiEndpoint.deleteCategories}/$id',isTokenRequired: true);
      if (response.statusCode == 200) {
        final responseData = MessageModel.fromJson(response.data);
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
