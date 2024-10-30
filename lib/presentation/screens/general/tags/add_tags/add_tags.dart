part of 'add_tags_imports.dart';

@RoutePage()
class AddTags extends StatefulWidget {
  const AddTags({super.key});

  @override
  State<AddTags> createState() => _AddTagsState();
}

class _AddTagsState extends State<AddTags> {
  late AddTagsViewModel addTagsViewModel;

  @override
  void initState() {
    addTagsViewModel =
        AddTagsViewModel(repositories: context.read<Repositories>());
    super.initState();
  }

    @override
  void dispose() {
    addTagsViewModel.controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        title: 'Add Tags'.text.white.center.make().centered(),
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
              controller: addTagsViewModel.controller,
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
              controller: addTagsViewModel.controller,
              // validator: (password) {
              //   if (password!.isEmpty) {
              //     return 'Empty password';
              //   }
              //   return null;
              // },
            ),
            const Spacer(),
            BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
              bloc: addTagsViewModel.isLoadingBloc,
              builder: (context, state) {
                return PrimaryButton(
                    title: "Add New Tags",
                    isLoading: state.data,
                    onPressed: () {
                      addTagsViewModel.addNewTags(context);
                    });
              },
            ),
          ],
        ),
      )),
    );
  }
}
