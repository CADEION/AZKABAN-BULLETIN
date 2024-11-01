part of 'categories_imports.dart';

@RoutePage()
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late CategoriesViewModel categoriesViewModel;

  @override
  void initState() {
    categoriesViewModel =
        CategoriesViewModel(repositories: context.read<Repositories>());
    categoriesViewModel.getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 'Categories'.text.size(24.sp).white.make().centered(),
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                categoriesViewModel.goToAddCategories(context);
              },
              icon: Icon(
                FeatherIcons.plus,
                color: Colors.white,
              ))
        ],
      ),
      body: BlocBuilder<VelocityBloc<CategoriesModel>,
          VelocityState<CategoriesModel>>(
        bloc: categoriesViewModel.categoriesModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
              itemCount: state.data.categories!.length,
              itemBuilder: (context, index) {
                var categoriesData = state.data.categories![index];
                return Card(
                  child: ListTile(
                    onTap: (){
                      AutoRouter.of(context).maybePop<Category>(categoriesData);
                    },
                    leading: '${index + 1}'.text.size(16.sp).make(),
                    title: categoriesData.title!.text.size(16.sp).make(),
                    trailing: SizedBox(
                      width: 100.w,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                categoriesViewModel.goToUpdateCategories(context, categoriesData);
                              },
                              icon: const Icon(
                                FeatherIcons.edit,
                                color: Colors.teal,
                              )),
                          IconButton(
                              onPressed: () {
                                categoriesViewModel.deleteCategories(context, categoriesData.id.toString(), index);
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
                  height: 1,
                );
              },
            );
          }
          if (state is VelocityFailedState) {
            return Center(child: state.error.text.make());
          } else {
            return Center(child: 'Cat data'.text.make());
          }
        },
      ),
    );
  }
}
