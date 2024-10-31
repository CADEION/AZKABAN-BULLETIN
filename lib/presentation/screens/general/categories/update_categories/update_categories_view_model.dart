part of 'update_categories_imports.dart';

class UpdateCategoriesViewModel{
  final Repositories repositories;

  UpdateCategoriesViewModel({required this.repositories});

  final TextEditingController controller = TextEditingController();

  VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  updateCategories(context,String id)async{
    isLoadingBloc.onUpdateData(true);
    var catData = await repositories.categoriesRepo.updateCategories(id,controller.text,controller.text.toLowerCase().replaceAll(' ', '-'));
    if (catData.status == 1) {
      VxToast.show(context, msg: catData.message!);
      var newData = await repositories.categoriesRepo.getAllCategories();
      isLoadingBloc .onUpdateData(false);
      AutoRouter.of(context).maybePop<CategoriesModel>(newData);
    }
  }
}