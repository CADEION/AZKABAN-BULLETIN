import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/core/constants/my_assets.dart';
import 'package:azkaban_bulletin/core/constants/my_colors.dart';
import 'package:azkaban_bulletin/data/repositories/auth_repo.dart';
import 'package:azkaban_bulletin/presentation/screens/general/profile/profile_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../data/repositories/repositories.dart';
import '../../../../utils/utils.dart';
import '../../../routers/router_import.gr.dart';

part 'profile.dart';
part 'profile.i18n.dart';
part 'profile_view_model.dart';
