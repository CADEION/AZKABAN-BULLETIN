part of 'add_tags_imports.dart';

class AddTagsViewModel {
  final Repositories repositories;

  AddTagsViewModel({required this.repositories});

  final TextEditingController controller = TextEditingController();

  VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  addNewTags(context) async {
    isLoadingBloc.onUpdateData(true);
    var data = await repositories.tagsRepo.addNewTags(
        controller.text, controller.text.toLowerCase().replaceAll(' ', '-'));
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
    }
    var newData = await repositories.tagsRepo.getAllTags();
    isLoadingBloc.onUpdateData(false);
    AutoRouter.of(context).popForced<TagsModel>(newData);
  }
}
