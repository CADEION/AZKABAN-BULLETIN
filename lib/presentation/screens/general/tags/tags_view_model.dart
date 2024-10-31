part of 'tags_imports.dart';

class TagsViewModel {
  final Repositories repositories;

  TagsViewModel({required this.repositories});

  VelocityBloc<TagsModel> tagsModelBloc = VelocityBloc<TagsModel>(TagsModel());

  fetchAllTags() async {
    var tagData = await repositories.tagsRepo.getAllTags();
    debugPrint(tagData.tagsCount.toString());
    if (tagData.status == 1) {
      tagsModelBloc.onUpdateData(tagData);
    }
  }

  goToAddTags(context) async {
    var addedData =
        await AutoRouter.of(context).push<TagsModel>(AddTagsRoute());
    if (addedData != null) {
      tagsModelBloc.onUpdateData(addedData);
    }
  }

    goToUpdateTags(context,Tag tag) async {
    var addedData =
        await AutoRouter.of(context).push<TagsModel>(UpdateTagsRoute(tag: tag));
    if (addedData != null) {
      tagsModelBloc.onUpdateData(addedData);
    }
  }

  deleteTags(context, String id, int index) async {
    var data = await repositories.tagsRepo.deleteTags(id);
    if (data.status == 1) {
      VxToast.show(context, msg: data.message!);
      tagsModelBloc.state.data.tags!.removeAt(index);
      tagsModelBloc.onUpdateData(tagsModelBloc.state.data);
    }
  }
}
