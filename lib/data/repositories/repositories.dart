import 'package:azkaban_bulletin/data/repositories/auth_repo.dart';
import 'package:azkaban_bulletin/data/repositories/posts_repo.dart';

import 'categories_repo.dart';
import 'tags_repo.dart';

class Repositories {
  Repositories({
    required this.tagsRepo,
    required this.postsRepo,
    required this.authRepo,
    required this.categoriesRepo,
  });

  final TagsRepo tagsRepo;
  final PostsRepo postsRepo;
  final AuthRepo authRepo;
  final CategoriesRepo categoriesRepo;
}
