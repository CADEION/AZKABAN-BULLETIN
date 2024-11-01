part of 'tags_imports.dart';

@RoutePage()
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repositories: context.read<Repositories>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'Tags'.text.size(24.sp).white.make().centered(),
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                tagsViewModel.goToAddTags(context);
              },
              icon: Icon(
                FeatherIcons.plus,
                color: Colors.white,
              ))
        ],
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
          bloc: tagsViewModel.tagsModelBloc,
          builder: (context, state) {
            if (state is VelocityInitialState) {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is VelocityUpdateState) {
              return ListView.separated(
                itemCount: state.data.tags!.length,
                itemBuilder: (context, index) {
                  var tagData = state.data.tags![index];
                  return Card(
                    child: ListTile(
                      onTap: (){
                        AutoRouter.of(context).maybePop<Tag>(tagData);
                      },
                      leading: '${index + 1}'.text.size(16.sp).make(),
                      title: tagData.title!.text.size(16.sp).make(),
                      trailing: SizedBox(
                        width: 100.w,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  tagsViewModel.goToUpdateTags(
                                      context, tagData);
                                },
                                icon: const Icon(
                                  FeatherIcons.edit,
                                  color: Colors.teal,
                                )),
                            IconButton(
                                onPressed: () {
                                  tagsViewModel.deleteTags(
                                      context, tagData.id.toString(), index);
                                },
                                icon: const Icon(FeatherIcons.trash2,
                                    color: Colors.red)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 0.5,
                  );
                },
              );
            }
            if (state is VelocityFailedState) {
              return Center(child: state.error.text.make());
            } else {
              return Center(child: 'data'.text.make());
            }
          }),
    );
  }
}
