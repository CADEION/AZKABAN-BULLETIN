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
    tagsModelBloc.onUpdateData(addedData!);
  }
}
