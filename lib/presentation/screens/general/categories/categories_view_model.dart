part of 'categories_imports.dart';

class CategoriesViewModel {
  final Repositories repositories;

  CategoriesViewModel({required this.repositories});

  VelocityBloc<CategoriesModel> categoriesModelBloc =
      VelocityBloc(CategoriesModel());

  getAllCategories() async {
    var categoriesData = await repositories.categoriesRepo.getAllCategories();
    // debugPrint(categoriesData.tagsCount.toString());
    if (categoriesData.status == 1) {
      categoriesModelBloc.onUpdateData(categoriesData);
    }
  }

  goToAddCategories(context) async {
    var addedData = await AutoRouter.of(context)
        .push<CategoriesModel>(AddCategoriesRoute());
    if (addedData != null) {
      categoriesModelBloc.onUpdateData(addedData);
    }
  }

    goToUpdateCategories(context,Category category) async {
    var addedData = await AutoRouter.of(context)
        .push<CategoriesModel>(UpdateCategoriesRoute(category: category));
    if (addedData != null) {
      categoriesModelBloc.onUpdateData(addedData);
    }
  }

  deleteCategories(context,String id,int index)async{
    var data = await repositories.categoriesRepo.deleteCategories(id);
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      categoriesModelBloc.state.data.categories!.removeAt(index);
      categoriesModelBloc.onUpdateData(categoriesModelBloc.state.data);
    }
  }
}
