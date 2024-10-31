part of 'update_tags_imports.dart';

@RoutePage()
class UpdateTags extends StatefulWidget {
  const UpdateTags({super.key, required this.tag});

  final Tag tag;

  @override
  State<UpdateTags> createState() => _UpdateTagsState();
}

class _UpdateTagsState extends State<UpdateTags> {
  late UpdateTagsViewModel updateTagsViewModel;

  @override
  void initState() {
    updateTagsViewModel =
        UpdateTagsViewModel(repositories: context.read<Repositories>());
    updateTagsViewModel.controller.text = widget.tag.title.toString();
    super.initState();
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
              controller: updateTagsViewModel.controller,
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
              controller: updateTagsViewModel.controller,
            ),
            const Spacer(),
            BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
              bloc: updateTagsViewModel.isLoadingBloc ,
              builder: (context, state) {
                return PrimaryButton(
                    title: "Add New Tags",
                    isLoading: state.data,
                    onPressed: () {
                      updateTagsViewModel.updateTags(
                          context, widget.tag.id.toString());
                    });
              },
            )
          ],
        ),
      )),
    );
  }
}
