part of 'add_categories_imports.dart';

@RoutePage()
class AddCategories extends StatefulWidget {
  const AddCategories({super.key});

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  late AddCategoriesViewModel addCategoriesViewModel;

  @override
  void initState() {
    addCategoriesViewModel =
        AddCategoriesViewModel(repositories: context.read<Repositories>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        title: 'Add Categories'.text.white.center.make().centered(),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            40.h.heightBox,
            VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.primaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
              hint: 'Title',
              controller: addCategoriesViewModel.controller,
              // validator: (password) {
              //   if (password!.isEmpty) {
              //     return 'Empty password';
              //   }
              //   return null;
              // },
            ),
            20.h.heightBox,
            VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.primaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
              hint: 'Slug',
              controller: addCategoriesViewModel.controller,
              // validator: (password) {
              //   if (password!.isEmpty) {
              //     return 'Empty password';
              //   }
              //   return null;
              // },
            ),
            const Spacer(),
            BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
              bloc: addCategoriesViewModel.isLoadingBloc,
              builder: (context, state) {
                return PrimaryButton(
                    title: "Add New Categories",
                    isLoading: state.data,
                    onPressed: () {
                      addCategoriesViewModel.addNewCategories(context);
                    });
              },
            )
          ],
        ),
      )),
    );
  }
}
