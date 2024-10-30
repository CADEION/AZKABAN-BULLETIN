part of 'add_tags_imports.dart';

class AddTagsViewModel {
  final Repositories repositories;

  AddTagsViewModel({required this.repositories});

  final TextEditingController controller = TextEditingController();

  addNewTags(context) async {
    var data = await repositories.tagsRepo.addNewTags(
        controller.text, controller.text.toLowerCase().replaceAll(' ', '-'));
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
    }
    var newData = await repositories.tagsRepo.getAllTags();
    AutoRouter.of(context).popForced<TagsModel>(newData);
  }
}
