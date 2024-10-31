part of 'update_tags_imports.dart';

class UpdateTagsViewModel{
  final Repositories repositories;

  UpdateTagsViewModel({required this.repositories});

  final TextEditingController controller = TextEditingController();

  VelocityBloc<bool> isLoadingBloc  = VelocityBloc<bool>(false);

  updateTags(context,String id)async{
    isLoadingBloc .onUpdateData(true);
    var data = await repositories.tagsRepo.updateTags(id, controller.text, controller.text.toLowerCase().replaceAll(' ', '-'));
    if (data.status ==1) {
      VxToast.show(context,msg: data.message!);
      var newData = await repositories.tagsRepo.getAllTags();
      isLoadingBloc .onUpdateData(false);
      AutoRouter.of(context).maybePop<TagsModel>(newData);
    }
  }
}