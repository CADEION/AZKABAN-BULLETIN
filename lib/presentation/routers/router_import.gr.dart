// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:azkaban_bulletin/presentation/screens/auth/auth_imports.dart'
    as _i3;
import 'package:azkaban_bulletin/presentation/screens/auth/login/login_imports.dart'
    as _i7;
import 'package:azkaban_bulletin/presentation/screens/auth/register/register_imports.dart'
    as _i9;
import 'package:azkaban_bulletin/presentation/screens/general/add_posts/add_posts_imports.dart'
    as _i1;
import 'package:azkaban_bulletin/presentation/screens/general/categories/categories_imports.dart'
    as _i4;
import 'package:azkaban_bulletin/presentation/screens/general/general_imports.dart'
    as _i5;
import 'package:azkaban_bulletin/presentation/screens/general/home/home_imports.dart'
    as _i6;
import 'package:azkaban_bulletin/presentation/screens/general/home/home_model.dart'
    as _i13;
import 'package:azkaban_bulletin/presentation/screens/general/tags/add_tags/add_tags_imports.dart'
    as _i2;
import 'package:azkaban_bulletin/presentation/screens/general/tags/tags_imports.dart'
    as _i11;
import 'package:azkaban_bulletin/presentation/screens/Onboard/onboard_import.dart'
    as _i8;
import 'package:azkaban_bulletin/presentation/screens/splash/splash_import.dart'
    as _i10;

/// generated route for
/// [_i1.AddPosts]
class AddPostsRoute extends _i12.PageRouteInfo<void> {
  const AddPostsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddPostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddPostsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddPosts();
    },
  );
}

/// generated route for
/// [_i2.AddTags]
class AddTagsRoute extends _i12.PageRouteInfo<void> {
  const AddTagsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddTags();
    },
  );
}

/// generated route for
/// [_i3.Auth]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.Auth();
    },
  );
}

/// generated route for
/// [_i4.Categories]
class CategoriesRoute extends _i12.PageRouteInfo<void> {
  const CategoriesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.Categories();
    },
  );
}

/// generated route for
/// [_i5.General]
class GeneralRoute extends _i12.PageRouteInfo<void> {
  const GeneralRoute({List<_i12.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.General();
    },
  );
}

/// generated route for
/// [_i6.Home]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.Home();
    },
  );
}

/// generated route for
/// [_i6.HomeDetails]
class HomeDetailsRoute extends _i12.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    required _i13.Post post,
    required String imagePathUrl,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            post: post,
            imagePathUrl: imagePathUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeDetailsRouteArgs>();
      return _i6.HomeDetails(
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

  final _i13.Post post;

  final String imagePathUrl;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{post: $post, imagePathUrl: $imagePathUrl}';
  }
}

/// generated route for
/// [_i7.Login]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.Login();
    },
  );
}

/// generated route for
/// [_i8.Onboard]
class OnboardRoute extends _i12.PageRouteInfo<void> {
  const OnboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.Onboard();
    },
  );
}

/// generated route for
/// [_i9.Register]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.Register();
    },
  );
}

/// generated route for
/// [_i10.Splash]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.Splash();
    },
  );
}

/// generated route for
/// [_i11.Tags]
class TagsRoute extends _i12.PageRouteInfo<void> {
  const TagsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.Tags();
    },
  );
}
