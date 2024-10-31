import 'package:azkaban_bulletin/data/datasources/remote/api_client.dart';
import 'package:azkaban_bulletin/data/datasources/remote/api_endpoint.dart';
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
}
