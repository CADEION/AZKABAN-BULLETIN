

import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/tags/tags_model.dart';
import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint.dart';

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
}
