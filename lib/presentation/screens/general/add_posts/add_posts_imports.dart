import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/core/constants/my_colors.dart';
import 'package:azkaban_bulletin/data/repositories/auth_repo.dart';
import 'package:azkaban_bulletin/presentation/routers/router_import.gr.dart';
import 'package:azkaban_bulletin/presentation/screens/general/categories/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../data/repositories/repositories.dart';
import '../tags/tags_model.dart';

part 'add_posts.dart';
part 'add_posts.i18n.dart';
part 'add_posts_view_model.dart';
