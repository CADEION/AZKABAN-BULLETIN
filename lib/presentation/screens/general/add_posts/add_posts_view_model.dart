part of 'add_posts_imports.dart';

class AddPostsViewModel {
  final Repositories repositories;

  AddPostsViewModel({required this.repositories});

  final TextEditingController textEditingController = TextEditingController();
  final QuillController _controller = QuillController.basic();
  final ImagePicker picker = ImagePicker();

  VelocityBloc<XFile?> selectedImageBloc = VelocityBloc<XFile?>(null);
  VelocityBloc<Category?> selectedCategoryBloc = VelocityBloc<Category?>(null);

  pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImageBloc.onUpdateData(image);
    }
  }
}
