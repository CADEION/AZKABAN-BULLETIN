// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:azkaban_bulletin/presentation/screens/auth/auth_imports.dart'
    as _i4;
import 'package:azkaban_bulletin/presentation/screens/auth/login/login_imports.dart'
    as _i8;
import 'package:azkaban_bulletin/presentation/screens/auth/register/register_imports.dart'
    as _i10;
import 'package:azkaban_bulletin/presentation/screens/general/add_posts/add_posts_imports.dart'
    as _i2;
import 'package:azkaban_bulletin/presentation/screens/general/categories/add_categories/add_categories_imports.dart'
    as _i1;
import 'package:azkaban_bulletin/presentation/screens/general/categories/categories_imports.dart'
    as _i5;
import 'package:azkaban_bulletin/presentation/screens/general/categories/categories_model.dart'
    as _i18;
import 'package:azkaban_bulletin/presentation/screens/general/categories/update_categories/update_categories_imports.dart'
    as _i13;
import 'package:azkaban_bulletin/presentation/screens/general/general_imports.dart'
    as _i6;
import 'package:azkaban_bulletin/presentation/screens/general/home/home_imports.dart'
    as _i7;
import 'package:azkaban_bulletin/presentation/screens/general/home/home_model.dart'
    as _i16;
import 'package:azkaban_bulletin/presentation/screens/general/tags/add_tags/add_tags_imports.dart'
    as _i3;
import 'package:azkaban_bulletin/presentation/screens/general/tags/tags_imports.dart'
    as _i12;
import 'package:azkaban_bulletin/presentation/screens/general/tags/tags_model.dart'
    as _i19;
import 'package:azkaban_bulletin/presentation/screens/general/tags/update_tags/update_tags_imports.dart'
    as _i14;
import 'package:azkaban_bulletin/presentation/screens/Onboard/onboard_import.dart'
    as _i9;
import 'package:azkaban_bulletin/presentation/screens/splash/splash_import.dart'
    as _i11;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.AddCategories]
class AddCategoriesRoute extends _i15.PageRouteInfo<void> {
  const AddCategoriesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AddCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoriesRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddCategories();
    },
  );
}

/// generated route for
/// [_i2.AddPosts]
class AddPostsRoute extends _i15.PageRouteInfo<void> {
  const AddPostsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AddPostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddPostsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddPosts();
    },
  );
}

/// generated route for
/// [_i3.AddTags]
class AddTagsRoute extends _i15.PageRouteInfo<void> {
  const AddTagsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.AddTags();
    },
  );
}

/// generated route for
/// [_i4.Auth]
class AuthRoute extends _i15.PageRouteInfo<void> {
  const AuthRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.Auth();
    },
  );
}

/// generated route for
/// [_i5.Categories]
class CategoriesRoute extends _i15.PageRouteInfo<void> {
  const CategoriesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.Categories();
    },
  );
}

/// generated route for
/// [_i6.General]
class GeneralRoute extends _i15.PageRouteInfo<void> {
  const GeneralRoute({List<_i15.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.General();
    },
  );
}

/// generated route for
/// [_i7.Home]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.Home();
    },
  );
}

/// generated route for
/// [_i7.HomeDetails]
class HomeDetailsRoute extends _i15.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    required _i16.Post post,
    required String imagePathUrl,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            post: post,
            imagePathUrl: imagePathUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeDetailsRouteArgs>();
      return _i7.HomeDetails(
        post: args.post,
        imagePathUrl: args.imagePathUrl,
      );
    },
  );
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    required this.post,
    required this.imagePathUrl,
  });

  final _i16.Post post;

  final String imagePathUrl;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{post: $post, imagePathUrl: $imagePathUrl}';
  }
}

/// generated route for
/// [_i8.Login]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.Login();
    },
  );
}

/// generated route for
/// [_i9.Onboard]
class OnboardRoute extends _i15.PageRouteInfo<void> {
  const OnboardRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.Onboard();
    },
  );
}

/// generated route for
/// [_i10.Register]
class RegisterRoute extends _i15.PageRouteInfo<void> {
  const RegisterRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.Register();
    },
  );
}

/// generated route for
/// [_i11.Splash]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.Splash();
    },
  );
}

/// generated route for
/// [_i12.Tags]
class TagsRoute extends _i15.PageRouteInfo<void> {
  const TagsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.Tags();
    },
  );
}

/// generated route for
/// [_i13.UpdateCategories]
class UpdateCategoriesRoute
    extends _i15.PageRouteInfo<UpdateCategoriesRouteArgs> {
  UpdateCategoriesRoute({
    _i17.Key? key,
    required _i18.Category category,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          UpdateCategoriesRoute.name,
          args: UpdateCategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateCategoriesRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateCategoriesRouteArgs>();
      return _i13.UpdateCategories(
        key: args.key,
        category: args.category,
      );
    },
  );
}

class UpdateCategoriesRouteArgs {
  const UpdateCategoriesRouteArgs({
    this.key,
    required this.category,
  });

  final _i17.Key? key;

  final _i18.Category category;

  @override
  String toString() {
    return 'UpdateCategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i14.UpdateTags]
class UpdateTagsRoute extends _i15.PageRouteInfo<UpdateTagsRouteArgs> {
  UpdateTagsRoute({
    _i17.Key? key,
    required _i19.Tag tag,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          UpdateTagsRoute.name,
          args: UpdateTagsRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateTagsRouteArgs>();
      return _i14.UpdateTags(
        key: args.key,
        tag: args.tag,
      );
    },
  );
}

class UpdateTagsRouteArgs {
  const UpdateTagsRouteArgs({
    this.key,
    required this.tag,
  });

  final _i17.Key? key;

  final _i19.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsRouteArgs{key: $key, tag: $tag}';
  }
}
