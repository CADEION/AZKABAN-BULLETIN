part of 'categories_imports.dart';

class CategoriesViewModel{
  final Repositories repositories;

  CategoriesViewModel({required this.repositories});

  VelocityBloc<CategoriesModel> categoriesModelBloc = VelocityBloc(CategoriesModel());

  getAllCategories()async{
    var categoriesData = await repositories.categoriesRepo.getAllCategories();
    // debugPrint(categoriesData.tagsCount.toString());
    if (categoriesData.status == 1 ) {
      categoriesModelBloc.onUpdateData(categoriesData);
    }

  }
}