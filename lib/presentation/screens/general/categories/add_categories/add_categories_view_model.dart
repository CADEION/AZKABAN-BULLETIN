part of 'add_categories_imports.dart';

class AddCategoriesViewModel{
  final Repositories repositories;

  AddCategoriesViewModel({required this.repositories});

  final TextEditingController controller = TextEditingController();

  VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  addNewCategories(context)async{
    isLoadingBloc.onUpdateData(true);
    var catData = await repositories.categoriesRepo.addCategories(controller.text, controller.text.toLowerCase().replaceAll(' ', '-'));
    isLoadingBloc.onUpdateData(false);
    if (catData.status == 1) {
      VxToast.show(context, msg: catData.message!);
      var addedData = await repositories.categoriesRepo.getAllCategories();
      AutoRouter.of(context).maybePop<CategoriesModel>(addedData);
    }
  }

}