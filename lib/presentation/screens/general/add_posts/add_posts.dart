part of 'add_posts_imports.dart';

@RoutePage()
class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  late AddPostsViewModel addPostsViewModel;

  @override
  void initState() {
    addPostsViewModel =
        AddPostsViewModel(repositories: context.read<Repositories>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        title: 'Add Posts'.text.white.center.make().centered(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FeatherIcons.check,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          20.h.heightBox,
          BlocBuilder<VelocityBloc<XFile?>, VelocityState<XFile?>>(
            bloc: addPostsViewModel.selectedImageBloc,
            builder: (context, state) {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  
                  state.data != null ? Image.file(File(state.data!.path),fit: BoxFit.fill,width: 1.sw,height: 250,).cornerRadius(12) : Image.network(
                    'https://plus.unsplash.com/premium_photo-1666739389067-ff71ad748f3e?q=80&w=1903&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ).cornerRadius(12),
                  IconButton(
                    onPressed: () {
                      addPostsViewModel.pickImage();
                    },
                    icon: const Icon(
                      FeatherIcons.camera,
                      color: MyColors.primaryColor,
                    ),
                  )
                ],
              );
            },
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Title",
            controller: addPostsViewModel.textEditingController,
          ),
          20.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug",
            controller: addPostsViewModel.textEditingController,
          ),
          20.h.heightBox,
          InkWell(
            onTap: () {
              // var data = AutoRouter.of(context).push<Tag>(TagsRoute());
              // print('fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff');
              // print(data);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Tags'.text.xl.make(),
                  Icon(FeatherIcons.chevronRight)
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Categories'.text.xl.make(),
                Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          10.h.heightBox,
          QuillSimpleToolbar(
            controller: addPostsViewModel._controller,
            configurations: const QuillSimpleToolbarConfigurations(),
          ),
          SizedBox(
            child: QuillEditor.basic(
              controller: addPostsViewModel._controller,
              configurations: const QuillEditorConfigurations(),
            ),
          ),
          20.h.heightBox,
        ],
      ),
    );
  }
}
