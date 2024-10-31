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

  goToAddCategories(context)async{
    var addedData = await AutoRouter.of(context).push<CategoriesModel>(const AddCategoriesRoute());
    if (addedData != null) {
      categoriesModelBloc.onUpdateData(addedData);
    }
  }
}