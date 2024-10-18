import 'package:azkaban_bulletin/data/repositories/posts_repo.dart';

import 'tags_repo.dart';

class Repositories {
  Repositories({
    required this.tagsRepo,
    required this.postsRepo,
  });

  final TagsRepo tagsRepo;
  final PostsRepo postsRepo;
}
