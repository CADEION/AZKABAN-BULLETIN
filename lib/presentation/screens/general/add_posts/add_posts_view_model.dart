part of 'add_posts_imports.dart';

class AddPostsViewModel {
  final Repositories repositories;

  AddPostsViewModel({required this.repositories});

  final TextEditingController textEditingController = TextEditingController();
  final QuillController _controller = QuillController.basic();
  final ImagePicker picker = ImagePicker();

  VelocityBloc<XFile?> selectedImageBloc = VelocityBloc<XFile?>(null);
  VelocityBloc<Category?> selectedCategoryBloc = VelocityBloc<Category?>(null);
  VelocityBloc<Tag?> selectedTagBloc = VelocityBloc<Tag?>(null);
  VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImageBloc.onUpdateData(image);
    }
  }

  clear(){
    textEditingController.clear();
    _controller.clear();
    selectedCategoryBloc.onUpdateData(null);
    selectedImageBloc.onUpdateData(null);
    selectedTagBloc.onUpdateData(null);
  }

  addPosts(BuildContext context) async {
    if (selectedImageBloc.state.data == null) {
      VxToast.show(context, msg: "Please select an image.");
      return;
    }

    // Ensure selectedCategoryBloc and selectedTagBloc are not null
    if (selectedCategoryBloc.state.data == null ||
        selectedTagBloc.state.data == null) {
      VxToast.show(context, msg: "Please select a category and a tag.");
      return;
    }

    try {
      isLoadingBloc.onUpdateData(true);
      // Call the addPosts function with the necessary data
      var data = await repositories.postsRepo.addPosts(
        textEditingController.text,
        textEditingController.text.toLowerCase().replaceAll(' ', '-'),
        selectedCategoryBloc.state.data!.id.toString(),
        selectedTagBloc.state.data!.id.toString(),
        _controller.document.toPlainText(),
        '69',
        selectedImageBloc.state.data!.path,
        selectedImageBloc.state.data!.name,
      );

      // Show success or error message based on the response status
      if (data.status == 1) {
        VxToast.show(context, msg: data.message.toString());
        clear();
        isLoadingBloc.onUpdateData(false);
      } else {
        VxToast.show(context, msg: "Failed to add post. Please try again.");
      }
    } catch (e) {
      VxToast.show(context, msg: "An error occurred: ${e.toString()}");
    }
  }
}
