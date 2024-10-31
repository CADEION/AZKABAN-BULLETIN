part of 'update_categories_imports.dart';

@RoutePage()
class UpdateCategories extends StatefulWidget {
  const UpdateCategories({super.key, required this.category});

  final Category category;

  @override
  State<UpdateCategories> createState() => _UpdateCategoriesState();
}

class _UpdateCategoriesState extends State<UpdateCategories> {

  late UpdateCategoriesViewModel updateCategoriesViewModel;

  @override
  void initState() {
    updateCategoriesViewModel =
        UpdateCategoriesViewModel(repositories: context.read<Repositories>());
        updateCategoriesViewModel.controller.text = widget.category.title.toString();
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
              controller: updateCategoriesViewModel.controller,
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
              controller: updateCategoriesViewModel.controller,
              // validator: (password) {
              //   if (password!.isEmpty) {
              //     return 'Empty password';
              //   }
              //   return null;
              // },
            ),
            const Spacer(),
            BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
              bloc: updateCategoriesViewModel.isLoadingBloc,
              builder: (context, state) {
                return PrimaryButton(
                    title: "Add New Categories",
                    isLoading: state.data,
                    onPressed: () {
                      updateCategoriesViewModel.updateCategories(context,widget.category.id.toString());
                    });
              },
            )
          ],
        ),
      )),
    );
  }
}
