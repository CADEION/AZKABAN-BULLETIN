import 'package:azkaban_bulletin/data/repositories/auth_repo.dart';
import 'package:azkaban_bulletin/data/repositories/categories_repo.dart';
import 'package:azkaban_bulletin/data/repositories/posts_repo.dart';
import 'package:azkaban_bulletin/data/repositories/repositories.dart';
import 'package:azkaban_bulletin/data/repositories/tags_repo.dart';
import 'package:azkaban_bulletin/presentation/screens/general/profile/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'core/themes/app_themes.dart'; // Ensure this file exists with proper theme setup
import 'presentation/routers/router_import.dart'; // Your router setup
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repositories(
      tagsRepo: TagsRepo(),
      postsRepo: PostsRepo(),
      authRepo: AuthRepo(),
      categoriesRepo: CategoriesRepo(),
    ),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter(); // Initialize AppRouter

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return BlocProvider(
            create: (context) => VelocityBloc<ProfileModel>(ProfileModel()),
            child: MaterialApp.router(
              title: 'AzkabanBulletin',
              theme: AppThemes.dark, // Apply the dark theme
              routerConfig:
                  _appRouter.config(), // Use the auto_route configuration
            ),
          );
        });
  }
}
