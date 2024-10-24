import 'package:azkaban_bulletin/presentation/screens/general/home/home_model.dart';
import 'package:velocity_x/velocity_x.dart';

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
}
